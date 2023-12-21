package ncu.im3069.demo.app;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class Member_ {

	private int id;
    
    /** email，會員電子郵件信箱 */
    private String email;
    
    /** name，會員姓名 */
    private String name;
    
    /** password，會員密碼 */
    private String password;
    
    private String sex;
    
    private String idcard;
    
    private ArrayList<Collect_List> cl = new ArrayList<Collect_List>();
 
    private ArrayList<ItineraryList> il = new ArrayList<ItineraryList>();;
    
    /** mh，MemberHelper之物件與Member相關之資料庫方法（Sigleton） */
    private Member_Helper Memh =  Member_Helper.getHelper();
    private CollectListHelper CLh =  CollectListHelper.getHelper();
    private ItineraryListHelper ILh =  ItineraryListHelper.getHelper();
    /**
     * 實例化（Instantiates）一個新的（new）Member物件<br>
     * 採用多載（overload）方法進行，此建構子用於建立會員資料時，產生一名新的會員
     *
     * @param email 會員電子信箱
     * @param password 會員密碼
     * @param name 會員姓名
     */
    public Member_(String name, String email, String password, String sex, String idcard) {
        setEmail(email);
        setName(name);
        setPassword(password);
        setSex(sex);
        setIdCard(idcard);
    }

    /**
     * 實例化（Instantiates）一個新的（new）Member物件<br>
     * 採用多載（overload）方法進行，此建構子用於更新會員資料時，產生一名會員同時需要去資料庫檢索原有更新時間分鐘數與會員組別
     * 
     * @param id 會員編號
     * @param email 會員電子信箱
     * @param password 會員密碼
     * @param name 會員姓名
     */
    public Member_(int id, String name, String email, String password, String sex, String idcard) {
    	setId(id);
    	setEmail(email);
        setName(name);
        setPassword(password);
        setSex(sex);
        setIdCard(idcard);
        getCollect_ListFromDB();
        getItinerary_ListFromDB();
    }
    
    public int getId() {
        return this.id;
    }

    public String getEmail() {
        return this.email;
    }
    
    public String getName() {
        return this.name;
    }

    public String getPassword() {
        return this.password;
    }
    
    public String getSex() {
        return this.sex;
    }
    
    /**
     * 取得會員資料之會員組別
     *
     * @return the status 回傳會員組別
     */
    public String getIdCard() {
        return this.idcard;
    }
    
    public ArrayList<Collect_List> getCollect_List(){
    	return this.cl;
    }
    
    public ArrayList<ItineraryList> getItinerary_List(){
    	return this.il;
    }
    
    private void getCollect_ListFromDB() {
		ArrayList<Collect_List> cl = CLh.getCollectListByUserId(this.id);
		this.cl = cl;
	}
    
    private void getItinerary_ListFromDB() {
		ArrayList<ItineraryList> il = ILh.getItineraryListByUserId(this.id);
		this.il = il;
	}
    
    public void setId(int id) {
    	this.id = id;
    }
    
    public void setName(String name) {
    	this.name = name;
    }
    
    public void setEmail(String email) {
    	this.email = email;
    }
    
    public void setPassword(String password) {
    	this.password = password;
    }
    
    public void setSex(String sex) {
    	this.sex = sex;
    }
    
    public void setIdCard(String idcard) {
    	this.idcard = idcard;
    }
    
    
    /**
     * 取得該名會員所有資料
     *
     * @return the data 取得該名會員之所有資料並封裝於JSONObject物件內
     */
    public JSONObject getMemberData() {
        /** 透過JSONObject將該名會員所需之資料全部進行封裝*/ 
        JSONObject jso = new JSONObject();
        jso.put("id", getId());
        jso.put("name", getName());
        jso.put("email", getEmail());
        jso.put("password", getPassword());
        jso.put("sex", getSex());
        jso.put("idcard", getIdCard());
        
        return jso;
    }
    
    public JSONArray getCollect_ListData() {
        JSONArray result = new JSONArray();

        for(int i=0 ; i < this.cl.size() ; i++) {
            result.put(this.cl.get(i).getCollectListData());
        }

        return result;
    }
    
    public JSONArray getItinerary_ListData() {
        JSONArray result = new JSONArray();

        for(int i=0 ; i < this.il.size() ; i++) {
            result.put(this.il.get(i).getItineraryListData());
        }

        return result;
    }
    
    public JSONObject getMemberAllInfo() {
        JSONObject jso = new JSONObject();
        jso.put("Member_info", getMemberData());
        jso.put("Collect_List_info", getCollect_ListData());
        jso.put("Itinerary_List_info", getItinerary_ListData());

        return jso;
	}
  //* FUNCTION
  	
  	public JSONObject update() {
		/** 新建一個JSONObject用以儲存更新後之資料 */
		JSONObject data = new JSONObject();
		data = Memh.update(this);
	
		return data;
  	}
}
