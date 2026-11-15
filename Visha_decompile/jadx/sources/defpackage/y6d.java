package defpackage;

import android.os.Build;
import org.json.JSONObject;

public abstract class y6d {
    public static String a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    public static String b() {
        return "Android";
    }

    public static String c() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    public static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        k8d.i(jSONObject, "deviceType", a());
        k8d.i(jSONObject, "osVersion", c());
        k8d.i(jSONObject, "os", b());
        return jSONObject;
    }
}
