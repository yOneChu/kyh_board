package kyh_prj;

import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.junit.Test;

public class jsonTest {

	
	
	@Test
	public void json() {
		System.out.println("tttttt");
		
		JSONObject jobj = new JSONObject();
		
		jobj.put("name", "kyh");
		jobj.put("id", "kaa");
		System.out.println("jobj --->" + jobj);
		
		
		
		
		
		
		JSONArray jsonArray	=	new JSONArray();
	
		
		HashMap<String, String> oMap	=	new HashMap<>();
		oMap.put("name", "kyh");
		oMap.put("email", "k@nn");
		jsonArray.add(oMap);
		
		
		HashMap<String, String> bMap	=	new HashMap<>();
		
		
		bMap.put("name", "aaaa");
		bMap.put("email", "bbb@nn");
		jsonArray.add(bMap);
		
		
		//jsonArray.add("jsonTest");
		//jsonArray.add("hello");
		
		System.out.println("jsonArray---> " + jsonArray);
		
		
		
		
		jobj.put("list", jsonArray);
		System.out.println("jobj --->" + jobj);
		
		
		
	/*	
		out.print("{");
		
		out.print("\""+ "data" +"\":\"");
		
		out.print("[");*/
		
		
		System.out.println("\""+ "data" +"\":");
		
	}
	
	
}
