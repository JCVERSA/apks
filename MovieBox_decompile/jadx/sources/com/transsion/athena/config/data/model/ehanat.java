package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ga.AthenaAnalytics;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import javax.crypto.KeyGenerator;
import m4.a;
import org.json.JSONException;
import org.json.JSONObject;

public class ehanat {
    private static String A = "";
    private static boolean B = false;
    public static boolean C = false;
    public static boolean D = false;
    public static boolean E = false;
    public static boolean F = false;
    public static boolean G = true;
    public static boolean H = true;
    public static boolean I = true;
    public static boolean J = true;
    public static boolean K = false;
    private static JSONObject L = new JSONObject();
    private static JSONObject M = new JSONObject();
    private static JSONObject N = new JSONObject();
    private static JSONObject O = new JSONObject();
    private static JSONObject P = new JSONObject();
    private static final ArrayMap<Integer, String> Q = new ArrayMap<>();
    public static boolean R = true;

    private static String f41475a = null;

    private static String f41476b = null;

    private static String f41477c = null;

    private static String f41478d = null;

    private static String f41479e = null;

    private static String f41480f = null;

    private static String f41481g = null;

    public static String f41482h = null;

    public static String f41483i = null;

    public static String f41484j = null;

    public static String f41485k = null;

    public static String f41486l = null;

    public static byte[] f41487m = null;

    public static byte[] f41488n = null;

    public static byte[] f41489o = null;

    private static boolean f41490p = false;

    private static String f41491q = "online";

    private static long f41492r = 30000;

    private static String f41493s = "";

    private static String f41494t = "";

    private static boolean f41495u = true;

    private static boolean f41496v = true;

    private static boolean f41497w = false;

    private static int f41498x = 10485760;

    private static int f41499y;

    private static short f41500z;

    /* JADX WARN: Code duplicated, block: B:18:0x0036  */
    @NonNull
    public static String a(boolean z10) {
        byte b10;
        String str;
        String str2 = f41491q;
        int iHashCode = str2.hashCode();
        if (iHashCode != -1012222381) {
            if (iHashCode != 99349) {
                if (iHashCode == 3556498 && str2.equals(OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST)) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
            } else if (str2.equals("dev")) {
                b10 = 0;
            } else {
                b10 = -1;
            }
        } else if (str2.equals("online")) {
            b10 = 2;
        } else {
            b10 = -1;
        }
        if (b10 == 0) {
            str = f41475a;
        } else if (b10 != 1) {
            str = z10 ? f41478d : f41479e;
        } else {
            str = z10 ? f41476b : f41477c;
        }
        try {
            if (anehat.a(AthenaAnalytics.J(), "debug.athena.test_mode", false).booleanValue()) {
                str = z10 ? f41476b : f41477c;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "https://" + str;
    }

    public static String b(String str) {
        return str + f41483i;
    }

    public static void c(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        f41475a = jSONObject.getString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
        f41476b = jSONObject.getString("tu");
        f41477c = jSONObject.getString("tc");
        f41478d = jSONObject.getString("ou");
        f41479e = jSONObject.getString("oc");
        f41480f = jSONObject.getString("c").replace("v6", "v7");
        f41481g = jSONObject.getString("g") + "v2";
        String string = jSONObject.getString(TmcStartParams.KEY_URL_SHORT);
        f41482h = string;
        f41483i = string.replace("v2", "v3");
        f41484j = jSONObject.getString("fc");
        f41485k = jSONObject.getString("fd");
        f41486l = jSONObject.getString("fe");
        f41488n = jSONObject.getString("w").getBytes();
        f41489o = jSONObject.getString("iv").getBytes();
        a aVarA = a.a(AthenaAnalytics.J());
        try {
            if (aVarA.e("athena_def") != 0) {
                f41487m = f41488n;
                return;
            }
            String strH = aVarA.h("athena_ea");
            if (TextUtils.isEmpty(strH)) {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                strH = anehat.c(keyGenerator.generateKey().getEncoded());
                aVarA.c("athena_ea", strH);
            }
            f41487m = anehat.a(strH);
        } catch (Exception unused) {
            aVarA.b("athena_def", 1);
            f41487m = f41488n;
        }
    }

    public static void d(boolean z10) {
        com.transsion.athena.taaneh.aethna.c("setEnable isEnable = " + z10);
        f41495u = z10;
    }

    public static void e(boolean z10) {
        B = z10;
    }

    public static void f(boolean z10) {
        f41491q = z10 ? OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST : "online";
    }

    public static String g() {
        return f41493s;
    }

    public static synchronized JSONObject h() {
        return L;
    }

    public static String i() {
        return a(false) + f41481g;
    }

    public static int j() {
        return f41499y;
    }

    public static int k() {
        return f41498x;
    }

    public static JSONObject l() {
        return N;
    }

    public static String m() {
        return f41494t;
    }

    public static long n() {
        return f41492r;
    }

    public static String o() {
        return a(true) + f41483i;
    }

    public static boolean p() {
        return f41496v;
    }

    public static boolean q() {
        return f41490p;
    }

    public static boolean r() {
        return f41495u;
    }

    public static boolean s() {
        return B;
    }

    public static boolean t() {
        return TextUtils.equals(f41491q, "online");
    }

    public static boolean u() {
        return f41497w;
    }

    public static boolean v() {
        return TextUtils.equals(f41491q, OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST);
    }

    public static void b(int i10) {
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 > 200) {
            i10 = 200;
        }
        f41499y = i10;
    }

    public static void e(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                N.put(str, obj);
            }
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public static JSONObject f() {
        return O;
    }

    public static void b(boolean z10) {
        f41496v = z10;
    }

    public static void d(String str) {
        f41494t = str;
    }

    public static String b() {
        return A;
    }

    public static synchronized void d(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (a(obj)) {
                    L.put(str, obj);
                }
            } catch (JSONException e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
    }

    public static void b(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                P.put(str, obj);
            }
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public static JSONObject e() {
        return P;
    }

    public static JSONObject d() {
        return M;
    }

    public static void a(long j10) {
        if (j10 < 30000) {
            j10 = 30000;
        }
        f41492r = j10;
    }

    public static void a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(f41493s) || z10) {
            f41493s = str;
        }
    }

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str + f41480f;
        }
        return a(false) + f41480f;
    }

    public static void a() {
        f41497w = true;
    }

    public static void a(short s10, String str) {
        f41500z = s10;
        A = str;
    }

    public static void a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                M.put(str, obj);
            }
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public static void a(int i10, String str) {
        Q.put(Integer.valueOf(i10), str);
    }

    public static String a(int i10) {
        ArrayMap<Integer, String> arrayMap = Q;
        return arrayMap.containsKey(Integer.valueOf(i10)) ? arrayMap.get(Integer.valueOf(i10)) : "";
    }

    private static boolean a(Object obj) {
        int length = obj.toString().getBytes(StandardCharsets.UTF_8).length;
        if (length <= 2000) {
            return true;
        }
        com.transsion.athena.taaneh.aethna.b(String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length)));
        return false;
    }

    public static void c(boolean z10) {
        f41490p = z10;
    }

    public static void c(int i10) {
        if (i10 < 2097152) {
            f41498x = 2097152;
        }
        f41498x = i10;
    }

    public static short c() {
        return f41500z;
    }

    public static void c(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(obj)) {
                O.put(str, obj);
            }
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }
}
