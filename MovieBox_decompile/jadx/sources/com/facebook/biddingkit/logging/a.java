package com.facebook.biddingkit.logging;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

abstract class a {

    private static final AtomicReference f23456a = new AtomicReference();

    protected static JSONObject a() {
        Map map = (Map) f23456a.get();
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        } catch (JSONException e10) {
            b.d("BiddingStaticEnvironmentData", "Failed to create json data", e10);
        }
        return jSONObject;
    }

    protected static void b(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("bundle", context.getPackageName());
        map.put("idfa", str);
        map.put("device_make", Build.MANUFACTURER);
        map.put("device_model", Build.MODEL);
        map.put("os", "Android");
        map.put("os_version", Build.VERSION.RELEASE);
        map.put("bidding_kit_version", str2);
        f23456a.set(map);
    }
}
