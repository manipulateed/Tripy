package ncu.im3069.demo.controller;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.http.*;
import org.json.*;

import ncu.im3069.tools.JsonReader;
import ncu.im3069.demo.app.ItineraryItem;
import ncu.im3069.demo.app.ItineraryItemHelper;
import ncu.im3069.demo.app.Scene;
import javax.servlet.annotation.WebServlet;

@WebServlet("/api/ItineraryItem.do")
public class ItineraryItemController extends HttpServlet{
	/** The Constant serialVersionUID. */
    private static final long serialVersionUID = 1L;
    
    /** collih，CollectionItemHelper之物件與CollectionItem相關之資料庫方法（Sigleton） */
    private ItineraryItemHelper itih = ItineraryItemHelper.getHelper();
    
    public ItineraryItemController() {
    	super();
    }
    
    /**
     * 處理Http Method請求POST方法（新增資料）
     *
     * @param request Servlet請求之HttpServletRequest之Request物件（前端到後端）--> 從後端request前端
     * @param response Servlet回傳之HttpServletResponse之Response物件（後端到前端）
     * @throws ServletException the servlet exception
     * @throws IOException Signals that an I/O exception has occurred.
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    	/** 透過JsonReader類別將Request之JSON格式資料解析並取回 */
        JsonReader jsr = new JsonReader(request);
        JSONObject jso = jsr.getObject();
        
        /** 取出經解析到JSONObject之Request參數 */
        int id = jso.getInt("scene_id");
        String address = jso.getString("address");
        String detail = jso.getString("detail");
        String name = jso.getString("name");
        String phone = jso.getString("phone");
        String opentime = jso.getString("opentime");
        String image = jso.getString("images");
        String[] images_ = image.split(",");
        ArrayList<String> images = new ArrayList<String>();
        for (int i = 0; i < images_.length; i++) {
        	images.add(images_[i]);
        }
        /** 建立一個新的景點物件 */
        Scene m = new Scene(id, name, address, detail, opentime, phone, images);
        
        /** 取得list_id */
        int list_id = jso.getInt("itineraryItemList_id");
        String date = jso.getString("date"); 
        int order = jso.getInt("order");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d_ = null;
        try {    
        	d_ = format.parse(date);
        } catch (Exception e) {
        	e.printStackTrace();
        } 
                
        /** 建立一個新的收藏物件 */
        ItineraryItem iti = new ItineraryItem(m, d_, order);
        
        /** 透過itineraryItemHelper物件的createItineraryItemByItineraryListID()方法新建一個行程至資料庫 */
        JSONObject data = itih.createItineraryItemByItineraryListID(list_id, iti);
        
        /** 新建一個JSONObject用於將回傳之資料進行封裝 */
        JSONObject resp = new JSONObject();
        resp.put("status", "200");
        resp.put("message", "成功加入行程...");
        resp.put("response", data);
        
        /** 透過JsonReader物件回傳到前端（以JSONObject方式） */
        jsr.response(resp, response);
        
    }
    
    /**
     * 處理Http Method請求GET方法（取得資料）
     *
     * @param request Servlet請求之HttpServletRequest之Request物件（前端到後端）
     * @param response Servlet回傳之HttpServletResponse之Response物件（後端到前端）
     * @throws ServletException the servlet exception
     * @throws IOException Signals that an I/O exception has occurred.
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	/** 透過JsonReader類別將Request之JSON格式資料解析並取回 */
        JsonReader jsr = new JsonReader(request);
        /** 若直接透過前端AJAX之data以key=value之字串方式進行傳遞參數，可以直接由此方法取回資料 */
        String list_id = jsr.getParameter("list_id");
        String item_id = jsr.getParameter("id");
        
        if (list_id.isEmpty()) {
       	 /** 透過ItineraryItemHelper物件的getByCollectionID()方法自資料庫取回該名之資料，回傳之資料為JSONObject物件 */
           JSONObject query = itih.getByItineraryItemID(Integer.parseInt(item_id));
           
           /** 新建一個JSONObject用於將回傳之資料進行封裝 */
           JSONObject resp = new JSONObject();
           resp.put("status", "200");
           resp.put("message", "收藏行程資料取得成功");
           resp.put("response", query);
   
           /** 透過JsonReader物件回傳到前端（以JSONObject方式） */
           jsr.response(resp, response);
       }
       else {   
           /** 透過CollectionItemHelper物件之getAllByCollectionListId()方法取回所有景點之資料，回傳之資料為JSONObject物件 */
       		JSONObject query = itih.getAllByItineraryListID(Integer.parseInt(list_id));
       	
           /** 新建一個JSONObject用於將回傳之資料進行封裝 */
           JSONObject resp = new JSONObject();
           resp.put("status", "200");
           resp.put("message", "所有會員資料取得成功");
           resp.put("response", query);
   
           /** 透過JsonReader物件回傳到前端（以JSONArray方式） */
           jsr.response(resp, response);
       }
    }
    
    /**
     * 處理Http Method請求DELETE方法（刪除）
     *
     * @param request Servlet請求之HttpServletRequest之Request物件（前端到後端）
     * @param response Servlet回傳之HttpServletResponse之Response物件（後端到前端）
     * @throws ServletException the servlet exception
     * @throws IOException Signals that an I/O exception has occurred.
     */
    public void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	/** 透過JsonReader類別將Request之JSON格式資料解析並取回 */
        JsonReader jsr = new JsonReader(request);
        JSONObject jso = jsr.getObject();
        
        /** 取出經解析到JSONObject之Request參數 */
        int id = jso.getInt("id");
        
        /** 透過MemberHelper物件的deleteByID()方法至資料庫刪除該名會員，回傳之資料為JSONObject物件 */
        JSONObject query = itih.deleteItineraryItemByID(id);
        
        /** 新建一個JSONObject用於將回傳之資料進行封裝 */
        JSONObject resp = new JSONObject();
        resp.put("status", "200");
        resp.put("message", "行程景點移除成功！");
        resp.put("response", query);

        /** 透過JsonReader物件回傳到前端（以JSONObject方式） */
        jsr.response(resp, response);
    }
    
    /**
     * 處理Http Method請求PUT方法（更新）
     *
     * @param request Servlet請求之HttpServletRequest之Request物件（前端到後端）
     * @param response Servlet回傳之HttpServletResponse之Response物件（後端到前端）
     * @throws ServletException the servlet exception
     * @throws IOException Signals that an I/O exception has occurred.
     */
    public void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	/** 透過JsonReader類別將Request之JSON格式資料解析並取回 */
        JsonReader jsr = new JsonReader(request);
        JSONObject jso = jsr.getObject();
        
        /** 取出經解析到JSONObject之Request參數 */
        int sc_id = jso.getInt("sc_id");
        //Itinerary
        int iti_id = jso.getInt("iti_id");        
        String date = jso.getString("date");   
        int date_order = jso.getInt("order"); 
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d_ = null;
        try {    
        	d_ = format.parse(date);
        } catch (Exception e) {
        	e.printStackTrace();
        } 

        
        /** 透過傳入之參數，新建一個以這些參數之行程 ItineraryItem物件 */
        ItineraryItem iti = new ItineraryItem(iti_id, sc_id, d_, date_order);
        
        /** 透過Member物件的update()方法至資料庫更新該名會員資料，回傳之資料為JSONObject物件 */
        JSONObject data = iti.update();
        
        /** 新建一個JSONObject用於將回傳之資料進行封裝 */
        JSONObject resp = new JSONObject();
        resp.put("status", "200");
        resp.put("message", "成功! 更新行程順序...");
        resp.put("response", data);
        
        /** 透過JsonReader物件回傳到前端（以JSONObject方式） */
        jsr.response(resp, response);
    }  
    
}