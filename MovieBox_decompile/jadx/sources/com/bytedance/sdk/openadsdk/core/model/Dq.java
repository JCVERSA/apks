package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class Dq {
    private String Sj;
    private List<String> sP;

    public Dq(String str) {
        this.Sj = "";
        this.sP = new ArrayList();
        HashMap<String, Object> map = TextUtils.isEmpty(str) ? new HashMap<>() : Sj(str);
        try {
            this.Sj = (String) map.get("auto_test_param");
            JSONArray jSONArray = new JSONArray((String) map.get("auto_test_hosts"));
            this.sP = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                this.sP.add(jSONArray.optString(i10));
            }
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.sP("AutoTestModel", e10.getMessage());
        }
    }

    public String Sj() {
        return this.Sj;
    }

    public List<String> sP() {
        return this.sP;
    }

    private static final HashMap<String, Object> Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> map = new HashMap<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                map.put(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            }
            return map;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }
}
