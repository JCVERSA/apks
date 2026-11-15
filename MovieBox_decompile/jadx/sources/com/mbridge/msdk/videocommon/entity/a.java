package com.mbridge.msdk.videocommon.entity;

import org.json.JSONObject;

public class a {

    private String f39122a;

    private String f39123b;

    public a(String str, String str2) {
        this.f39122a = str;
        this.f39123b = str2;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new a(jSONObject.optString("appId"), jSONObject.optString("placementId"));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
