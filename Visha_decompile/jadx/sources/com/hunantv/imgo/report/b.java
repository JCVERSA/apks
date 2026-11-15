package com.hunantv.imgo.report;

import com.mgtv.task.http.HttpParams;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class b {
    public static HttpParams a(Map<String, String> map) {
        String strB = b(map);
        HashMap map2 = new HashMap();
        map2.put("Content-Type", "application/json");
        HttpParams httpParams = new HttpParams();
        httpParams.putParams(map2, HttpParams.Type.HEADER);
        httpParams.setBodyJson(strB);
        return httpParams;
    }

    private static String b(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }
}
