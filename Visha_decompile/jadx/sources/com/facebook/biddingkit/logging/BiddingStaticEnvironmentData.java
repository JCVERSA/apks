package com.facebook.biddingkit.logging;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

class BiddingStaticEnvironmentData {
    static final String BIDDING_KIT_VERSION = "bidding_kit_version";
    static final String BUNDLE = "bundle";
    static final String DEVICE_MAKE = "device_make";
    static final String DEVICE_MODEL = "device_model";
    static final String IDFA = "idfa";
    static final String OS = "os";
    static final String OS_VERSION = "os_version";
    private static final String TAG = "BiddingStaticEnvironmentData";
    private static final AtomicReference<Map<String, String>> sCachedEnvironmentParameters = new AtomicReference<>();

    public static JSONObject getCachedJsonData() {
        Map<String, String> map = sCachedEnvironmentParameters.get();
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e) {
            BkLog.e(TAG, "Failed to create json data", e);
        }
        return jSONObject;
    }

    public static void initialize(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put(BUNDLE, context.getPackageName());
        map.put(IDFA, str);
        map.put(DEVICE_MAKE, Build.MANUFACTURER);
        map.put(DEVICE_MODEL, Build.MODEL);
        map.put(OS, "Android");
        map.put("os_version", Build.VERSION.RELEASE);
        map.put(BIDDING_KIT_VERSION, str2);
        sCachedEnvironmentParameters.set(map);
    }
}
