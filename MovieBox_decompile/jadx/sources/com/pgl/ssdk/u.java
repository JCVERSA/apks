package com.pgl.ssdk;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

public class u {

    private static String f39379a;

    private static long[][] f39380b;

    private static String f39381c;

    static class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            if (TextUtils.isEmpty(u.f39381c)) {
                String unused = u.f39381c = u.d();
                u0.b(x.b(), "romtype", u.f39381c);
            }
        }
    }

    public static JSONArray[] c(Context context) {
        if (f39380b == null) {
            f39380b = (long[][]) com.pgl.ssdk.ces.a.meta(157, context, null);
        }
        long[][] jArr = f39380b;
        if (jArr == null || jArr.length != 2) {
            f39380b = null;
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        long[][] jArr2 = f39380b;
        long[] jArr3 = jArr2[0];
        long[] jArr4 = jArr2[1];
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (int i10 = 0; i10 < jArr3.length; i10++) {
            try {
                jSONArray.put(i10, jCurrentTimeMillis - jArr3[i10]);
                jSONArray2.put(i10, jCurrentTimeMillis - jArr4[i10]);
            } catch (JSONException unused) {
            }
        }
        return new JSONArray[]{jSONArray, jSONArray2};
    }

    public static boolean d(Context context) {
        Object objMeta = com.pgl.ssdk.ces.a.meta(155, context, null);
        if (objMeta instanceof Boolean) {
            return ((Boolean) objMeta).booleanValue();
        }
        return false;
    }

    public static int e() {
        return ((Integer) com.pgl.ssdk.ces.a.meta(162, null, null)).intValue();
    }

    public static boolean b(Context context) {
        Object objMeta = com.pgl.ssdk.ces.a.meta(156, context, null);
        if (objMeta instanceof Boolean) {
            return ((Boolean) objMeta).booleanValue();
        }
        return false;
    }

    public static String a(Context context) {
        String str = f39379a;
        if (str != null) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            f39379a = Settings.Global.getString(context.getContentResolver(), "boot_count");
        } else {
            f39379a = "lowapi";
        }
        return f39379a;
    }

    public static String d() {
        if (b("com.samsung.android.knox.SemPersonaManager") || b("com.samsung.android.knoxguard.KnoxGuardManager")) {
            return "samsung";
        }
        if (b("androidhnext.Manifest") || b("androidhnext.R")) {
            return "honor";
        }
        if (b("androidhwext.Manifest") || b("androidhwext.R")) {
            return "huawei";
        }
        if (b("oppo.Manifest") || b("oppo.R") || b("oplus.Manifest") || b("oplus.R") || b("com.oneplus.Manifest") || b("com.oneplus.R")) {
            return "oppo";
        }
        if (b("vivo.Manifest") || b("vivo.R")) {
            return "vivo";
        }
        if (b("miui.Manifest") || b("miui.R") || b("miui.os.Build")) {
            return "xiaomi";
        }
        if (b("lineageos.platform.Manifest") || b("lineageos.platform.R")) {
            return "lineage";
        }
        if (c("/system/framework/com.motorola.motosignature.jar")) {
            return "moto";
        }
        return (c("/system/framework/transsion-framework.jar") || c("/system/framework/transsion-services.jar")) ? "transsion" : OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER;
    }

    private static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean c(String str) {
        try {
            return new File(str).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f39381c)) {
            return f39381c;
        }
        String strA = u0.a(x.b(), "romtype", (String) null);
        f39381c = strA;
        if (!TextUtils.isEmpty(strA)) {
            return f39381c;
        }
        o0.b(new a());
        return "";
    }
}
