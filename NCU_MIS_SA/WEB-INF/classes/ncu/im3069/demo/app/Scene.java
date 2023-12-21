package ncu.im3069.demo.app;

import java.util.*;

import org.json.*;

public class Scene {
	
    /** id，景點編號 */
    private int id;

    /** email，會員電子郵件信箱 */
    private String name;

    /** address，會員地址 */
    private String address;

    /** phone，會員手機 */
    private String phone;
    
    private String detail;
    
    /** modify，訂單修改時間 */
    private String opentime;

    /** list，訂單列表 */
    private ArrayList<Comment> list = new ArrayList<Comment>();
    
    private ArrayList<String> images = new ArrayList<String>();

    /** oph，OrderItemHelper 之物件與 Order 相關之資料庫方法（Sigleton） */
    private CommentHelper Comh = CommentHelper.getHelper();	
    
    private SceneHelper Sceh = SceneHelper.getHelper();

	public Scene(String name, String address, String detail, String opentime, String phone, ArrayList<String> images) {
		// TODO Auto-generated constructor stub
		setName(name);
		setAddress(address);
		setDetail(detail);
		setOpentime(opentime);
		setPhone(phone);
		setImages(images);
	}

    /**
     * 實例化（Instantiates）一個新的（new）Product 物件<br>
     * 採用多載（overload）方法進行，此建構子用於修改產品時
     *
     * @param id 產品編號
     * @param name 產品名稱
     * @param price 產品價格
     * @param image 產品圖片
     * @param describe 產品敘述
     */
	public Scene(int id, String name, String address, String detail, String opentime, String phone, ArrayList<String> images) {
		setId(id);
		setName(name);
		setAddress(address);
		setDetail(detail);
		setOpentime(opentime);
		setPhone(phone);
		getSceneCommentFromDB();
		setImages(images);
	}

    /**
     * 取得產品編號
     *
     * @return int 回傳產品編號
     */
	public int getId() {
		return this.id;
	}

    /**
     * 取得產品名稱
     *
     * @return String 回傳產品名稱
     */
	public String getName() {
		return this.name;
	}
	
	public ArrayList<String> getImages(){
		return this.images;
	}

    /**
     * 取得產品價格
     *
     * @return double 回傳產品價格
     */
	public String getAddress() {
		return this.address;
	}
    /**
     * 取得產品圖片
     *
     * @return String 回傳產品圖片
     */
	public String getDetail() {
		return this.detail;
	}
    /**
     * 取得產品敘述
     *
     * @return String 回傳產品敘述
     */
	public String getPhone() {
		return this.phone;
	}
	
	public String getOpentime() {
		return this.opentime;
	}
	
	public void setId(int id) {
        this.id = id;
    }
	
	public void setImages(ArrayList<String> images) {
		this.images = images;
	}
	
	public void setName(String name) {
        this.name = name;
    }
	
	public void setAddress(String address) {
        this.address = address;
    }
	
	public void setDetail(String detail) {
        this.detail = detail;
    }
	
	public void setOpentime(String opentime) {
        this.opentime = opentime;
    }
	
	public void setPhone(String phone) {
        this.phone = phone;
    }
	
	public ArrayList<Comment> getSceneComment(){
		return this.list;
	}
	
	private void getSceneCommentFromDB() {
		ArrayList<Comment> comments = Comh.getSceneCommentBySceneId(this.id);
		this.list = comments;
	}
    /**
     * 取得產品資訊
     *
     * @return JSONObject 回傳產品資訊
     */
	public JSONObject getSceneData() {
		JSONArray result = new JSONArray();

        for(int i=0 ; i < this.images.size() ; i++) {
            result.put(this.images.get(i));
        }
        /** 透過JSONObject將該項產品所需之資料全部進行封裝*/
        JSONObject jso = new JSONObject();
        jso.put("id", getId());
        jso.put("name", getName());
        jso.put("address", getAddress());
        jso.put("detail", getDetail());
        jso.put("opentime", getOpentime());
        jso.put("phone", getPhone());
        jso.put("images", result);
        return jso;
    }
	
	public JSONArray getSceneCommentData() {
	        JSONArray result = new JSONArray();

	        for(int i=0 ; i < this.list.size() ; i++) {
	            result.put(this.list.get(i).getCommentData());
	        }

	        return result;
	}
	 
	public JSONObject getSceneAllInfo() {
	        JSONObject jso = new JSONObject();
	        jso.put("Scene_info", getSceneData());
	        jso.put("Scene_Comment_info", getSceneCommentData());

	        return jso;
	}
	
	//* FUNCTION
	
	public JSONObject update() {
		/** 新建一個JSONObject用以儲存更新後之資料 */
		JSONObject data = new JSONObject();
		data = Sceh.update(this);
		return data;
	}
}
