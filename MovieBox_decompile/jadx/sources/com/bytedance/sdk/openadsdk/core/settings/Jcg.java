package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class Jcg {
    public static final Jcg Sj = new Jcg(null);
    public static String sP = "";
    public boolean EjP;
    public boolean HiB;
    public String TKC;
    public boolean vS;

    public Jcg(String str) {
        this.TKC = "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/3p_monitor.9db44671.js";
        this.EjP = true;
        this.HiB = true;
        this.vS = true;
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("performance_js");
            String strOptString = jSONObjectOptJSONObject.optString("url", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/3p_monitor.9db44671.js");
            if (!TextUtils.isEmpty(strOptString)) {
                this.TKC = strOptString;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("execute_time");
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                arrayList.add(jSONArrayOptJSONArray.optString(i10));
            }
            this.EjP = arrayList.contains("load_finish");
            this.vS = arrayList.contains("load_fail");
            this.HiB = arrayList.contains(NativeImgComponent.EVENT_LOAD);
        } catch (Exception unused) {
        }
    }
}
