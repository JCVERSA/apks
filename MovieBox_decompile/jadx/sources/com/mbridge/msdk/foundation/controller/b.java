package com.mbridge.msdk.foundation.controller;

import android.util.Log;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

public class b {

    private HashMap<String, com.mbridge.msdk.foundation.cache.d> f34201a;

    static class C0457b {

        static b f34202a = new b();
    }

    public static b a() {
        return C0457b.f34202a;
    }

    public com.mbridge.msdk.foundation.cache.d b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        Exception e10;
        if (this.f34201a == null) {
            this.f34201a = new HashMap<>();
        }
        if (this.f34201a.containsKey(str)) {
            return this.f34201a.get(str);
        }
        if (jSONArray == null) {
            try {
                jSONArray2 = new JSONArray();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("c_cb", 0);
                    jSONObject.put("t_disc", 0.95d);
                    jSONObject.put("u_disc", 0.95d);
                    jSONObject.put("max_ecppv_diff", 0);
                    jSONObject.put("max_cache_num", 20);
                    jSONObject.put("max_usage_limit", 10);
                    jSONObject.put("time_interval", 7200);
                    jSONArray2.put(jSONObject);
                } catch (Exception e11) {
                    e10 = e11;
                    Log.e("CandidateController", e10.getMessage());
                }
            } catch (Exception e12) {
                jSONArray2 = jSONArray;
                e10 = e12;
            }
            jSONArray = jSONArray2;
        }
        return a(str, jSONArray);
    }

    private b() {
        this.f34201a = new HashMap<>();
    }

    public com.mbridge.msdk.foundation.cache.d a(String str, JSONArray jSONArray) {
        if (this.f34201a == null) {
            this.f34201a = new HashMap<>();
        }
        if (this.f34201a.containsKey(str)) {
            return this.f34201a.get(str);
        }
        com.mbridge.msdk.foundation.cache.d dVar = new com.mbridge.msdk.foundation.cache.d(str, jSONArray);
        this.f34201a.put(str, dVar);
        return dVar;
    }
}
