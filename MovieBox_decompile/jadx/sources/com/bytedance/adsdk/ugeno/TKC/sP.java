package com.bytedance.adsdk.ugeno.TKC;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.HiB;
import org.json.JSONObject;

public class sP {
    public static String Sj(String str, JSONObject jSONObject) {
        Sj sjTKC;
        Sj.InterfaceC0182Sj interfaceC0182SjSj;
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                return (!str.startsWith("${") || !str.endsWith("}") || (sjTKC = HiB.Sj().TKC()) == null || (interfaceC0182SjSj = sjTKC.Sj(str.substring(2, str.length() + (-1)))) == null) ? str : (String) interfaceC0182SjSj.Sj(jSONObject);
            } catch (Throwable unused) {
            }
        }
        return str;
    }
}
