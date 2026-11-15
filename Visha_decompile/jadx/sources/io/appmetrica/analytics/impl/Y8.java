package io.appmetrica.analytics.impl;

import org.json.JSONException;
import org.json.JSONObject;

public final class Y8 {
    public final Un a;

    public Y8(Un un) {
        this.a = un;
    }

    public final void a(int i, long j) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        Un un = this.a;
        synchronized (un) {
            jSONObjectOptJSONObject = un.a.a().optJSONObject("numbers_of_type");
        }
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        jSONObjectOptJSONObject.put(String.valueOf(i), j);
        this.a.a(jSONObjectOptJSONObject);
    }
}
