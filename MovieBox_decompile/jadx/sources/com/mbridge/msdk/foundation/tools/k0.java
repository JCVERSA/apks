package com.mbridge.msdk.foundation.tools;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.reflect.Constructor;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

public class k0 extends t {
    private static int A = 0;
    private static String B = "";
    private static Object C = null;
    private static int D = 0;
    private static int E = 0;
    private static long F = -1;
    private static long G = -1;
    private static String H = "";
    private static String I = "";

    private static String f34916j = "";

    private static String f34917k = "";

    private static int f34918l = -1;

    private static String f34919m = "";

    private static int f34920n = -1;

    private static int f34921o = 0;

    private static String f34922p = "";

    private static int f34923q = -1;

    private static String f34924r = "";

    private static String f34925s = "";

    private static volatile int f34926t = -1;

    private static String f34927u = "";

    private static String f34928v = "";

    private static int f34929w = 0;

    private static String f34930x = "";

    private static String f34931y = "";

    private static int f34932z = -1;

    class a implements Runnable {

        final Context f34933a;

        a(Context context) {
            this.f34933a = context;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.tools.f.c(this.f34933a);
        }
    }

    class b implements Runnable {

        final Context f34934a;

        b(Context context) {
            this.f34934a = context;
        }

        @Override
        public void run() {
            String defaultUserAgent;
            try {
                defaultUserAgent = WebSettings.getDefaultUserAgent(this.f34934a);
            } catch (Throwable unused) {
                defaultUserAgent = null;
            }
            try {
                if (TextUtils.isEmpty(defaultUserAgent) || defaultUserAgent.equals(k0.f34931y)) {
                    return;
                }
                String unused2 = k0.f34931y = defaultUserAgent;
                k0.G(this.f34934a);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    class c implements Runnable {

        final Context f34935a;

        c(Context context) {
            this.f34935a = context;
        }

        @Override
        @SuppressLint({"MissingPermission"})
        public void run() {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f34935a.getSystemService("connectivity");
                if (connectivityManager != null && com.mbridge.msdk.foundation.same.a.f34522z) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        int unused = k0.f34926t = 0;
                        return;
                    }
                    if (activeNetworkInfo.getType() == 1) {
                        int unused2 = k0.f34926t = 9;
                        return;
                    }
                    TelephonyManager telephonyManager = (TelephonyManager) this.f34935a.getSystemService("phone");
                    if (telephonyManager == null) {
                        int unused3 = k0.f34926t = 0;
                    } else {
                        int unused4 = k0.f34926t = k0.c(telephonyManager.getNetworkType());
                    }
                }
            } catch (Exception unused5) {
                int unused6 = k0.f34926t = 0;
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            try {
                String unused = k0.f34930x = TimeZone.getDefault().getDisplayName(false, 0, Locale.ENGLISH);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.util.c.a();
            } catch (Exception e10) {
                o0.b("SameDiTool", e10.getMessage());
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override
        public void run() {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD != null) {
                ActivityManager activityManager = (ActivityManager) contextD.getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                long unused = k0.G = memoryInfo.totalMem;
                long unused2 = k0.F = memoryInfo.availMem;
            }
        }
    }

    public static int A() {
        return f34932z;
    }

    public static int B() {
        if (D == 0) {
            D = t0.e();
        }
        return D;
    }

    public static void C(Context context) {
        try {
            t.e(context);
            o();
            q();
            t(context);
            B(context);
            A(context);
            F(context);
            n();
            s();
            p(context);
            w();
            com.mbridge.msdk.foundation.same.a.B = false;
            com.mbridge.msdk.foundation.same.a.f34522z = t0.b("android.permission.ACCESS_NETWORK_STATE", context);
            w(context);
            l();
            com.mbridge.msdk.foundation.tools.f.b();
            g();
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
        }
    }

    public static int D(Context context) {
        if (f34918l == -1) {
            f34918l = t0.c(context, "com.tencent.mm") ? 1 : 0;
        }
        return f34918l;
    }

    private static void E() {
        String str = Build.VERSION.RELEASE;
        String strN = n();
        String str2 = Build.DISPLAY;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(strN)) {
            f34931y = "Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19";
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Mozilla/5.0 (Linux; Android ");
        sb2.append(str);
        sb2.append("; ");
        sb2.append(strN);
        sb2.append(" Build/");
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append(") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19");
        f34931y = sb2.toString();
    }

    public static int F(Context context) {
        Configuration configuration;
        return (context == null || context.getResources() == null || (configuration = context.getResources().getConfiguration()) == null || configuration.orientation != 2) ? 1 : 2;
    }

    public static void G(Context context) {
        try {
            w0.b(context, "mbridge_ua", f34931y);
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage(), th2);
        }
    }

    public static int c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 3;
            case 13:
            case 18:
            case 19:
                return 4;
            case 20:
                return 5;
            default:
                return 0;
        }
    }

    public static Object d(String str) {
        if (C == null) {
            C = t0.g(str);
        }
        return C;
    }

    public static int e(String str) {
        if (E == 0) {
            E = t0.f(str);
        }
        return E;
    }

    public static void g(Context context) {
        try {
            c cVar = new c(context);
            if (com.mbridge.msdk.foundation.same.threadpool.a.d().getActiveCount() < 1) {
                com.mbridge.msdk.foundation.same.threadpool.a.d().execute(cVar);
            }
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
        }
    }

    public static void h(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                com.mbridge.msdk.foundation.tools.f.c(context);
            } else {
                new Handler(context.getMainLooper()).post(new a(context));
            }
        } catch (Exception e10) {
            o0.b("SameDiTool", "", e10);
        }
    }

    public static String i() {
        if (TextUtils.isEmpty(f34931y)) {
            l(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        return f34931y;
    }

    public static String j() {
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA);
        return "";
    }

    public static void k() {
        try {
            Object objA = w0.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeConstans.SP_GA_ID, "");
            Object objA2 = w0.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeConstans.SP_GA_ID_LIMIT, 0);
            if (objA instanceof String) {
                String str = (String) objA;
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.tools.f.a(str);
                }
                if (objA2 instanceof Integer) {
                    com.mbridge.msdk.foundation.tools.f.a(((Integer) objA2).intValue());
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("SameDiTool", e10.getMessage());
            }
        }
    }

    public static String l(Context context) {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return null;
        }
        i(context);
        try {
            if (Looper.myLooper() != Looper.getMainLooper() || MBridgeConstans.DNT_GUA_ON_UI) {
                if (TextUtils.isEmpty(f34931y)) {
                    E();
                }
                z(context);
            } else if (TextUtils.isEmpty(f34931y)) {
                try {
                    f34931y = WebSettings.getDefaultUserAgent(context);
                } catch (Throwable unused) {
                }
                if (TextUtils.isEmpty(f34931y)) {
                    try {
                        Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(Context.class, WebView.class);
                        declaredConstructor.setAccessible(true);
                        f34931y = ((WebSettings) declaredConstructor.newInstance(context, null)).getUserAgentString();
                        declaredConstructor.setAccessible(false);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                    if (TextUtils.isEmpty(f34931y)) {
                        try {
                            f34931y = new WebView(context).getSettings().getUserAgentString();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                    if (TextUtils.isEmpty(f34931y)) {
                        E();
                    }
                }
            } else {
                z(context);
            }
        } catch (Throwable th4) {
            o0.b("SameDiTool", th4.getMessage(), th4);
        }
        G(context);
        return f34931y;
    }

    public static int m(Context context) {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) || context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            HashMap mapV = v(context);
            return mapV.get("height") == null ? displayMetrics.heightPixels : ((Integer) mapV.get("height")).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String n() {
        return !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) ? "" : Build.MODEL;
    }

    private static void o() {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new f());
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
        }
    }

    public static String p() {
        return !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) ? "" : Build.MANUFACTURER;
    }

    public static String q(Context context) {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                f34924r = "";
            } else if (TextUtils.isEmpty(f34924r)) {
                if (context == null) {
                    f34924r = "";
                    return "";
                }
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                if (t0.j(simOperator)) {
                    f34924r = simOperator.substring(0, Math.min(3, simOperator.length()));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f34924r = "";
        }
        return f34924r;
    }

    public static String r(Context context) {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                f34925s = "";
            } else if (TextUtils.isEmpty(f34925s)) {
                if (context == null) {
                    f34925s = "";
                    return f34924r;
                }
                String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
                if (t0.j(simOperator)) {
                    f34925s = simOperator.substring(Math.min(3, simOperator.length()));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f34925s = "";
        }
        return f34925s;
    }

    @SuppressLint({"MissingPermission"})
    public static int s(Context context) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                return f34926t;
            }
            if (contextD == null) {
                return f34926t;
            }
            if (f34926t != -1) {
                g(contextD);
                return f34926t;
            }
            f34926t = 0;
            return f34926t;
        } catch (Exception e10) {
            o0.b("SameDiTool", e10.getMessage(), e10);
            f34926t = 0;
            return f34926t;
        }
    }

    public static String t(Context context) {
        if (context == null) {
            return f34928v;
        }
        try {
            if (!TextUtils.isEmpty(f34928v)) {
                return f34928v;
            }
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            f34928v = str;
            return str;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String u() {
        try {
            if (TextUtils.isEmpty(I)) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                long jA = j0.a();
                String strJ = j(contextD);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("1", strJ);
                    jSONObject.put("2", String.valueOf(G));
                    jSONObject.put("3", String.valueOf(jA));
                    jSONObject.put("4", "");
                    jSONObject.put("5", "");
                } catch (Exception e10) {
                    o0.b("SameDiTool", e10.getMessage());
                }
                String strB = com.mbridge.msdk.foundation.tools.a.b(jSONObject.toString());
                I = strB;
                if (strB == null) {
                    I = "";
                }
            }
        } catch (Exception e11) {
            o0.b("SameDiTool", e11.getMessage());
        }
        return I;
    }

    public static HashMap v(Context context) {
        HashMap map = new HashMap();
        if (context == null) {
            return map;
        }
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            map.put("height", Integer.valueOf(displayMetrics.heightPixels));
            map.put("width", Integer.valueOf(displayMetrics.widthPixels));
        } catch (Exception e10) {
            o0.b("SameDiTool", e10.getMessage(), e10);
        }
        return map;
    }

    public static String w() {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                return "";
            }
            if (TextUtils.isEmpty(f34930x)) {
                new Thread(new d()).start();
                return f34930x;
            }
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage(), th2);
        }
        return f34930x;
    }

    public static String x(Context context) {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) || context == null) {
            return "";
        }
        try {
            return Settings.System.getString(context.getContentResolver(), "time_12_24");
        } catch (Exception e10) {
            o0.b("SameDiTool", e10.getMessage(), e10);
            return "";
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage(), th2);
            return "";
        }
    }

    public static String y(Context context) {
        return (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) && context != null) ? String.valueOf(G) : "";
    }

    private static void z(Context context) {
        try {
            new Thread(new b(context)).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int A(Context context) {
        if (context == null) {
            return A;
        }
        int i10 = A;
        if (i10 != 0) {
            return i10;
        }
        try {
            int i11 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            A = i11;
            return i11;
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public static String a(Context context, int i10) {
        TelephonyManager telephonyManager;
        if (i10 == 0 || i10 == 9) {
            return "";
        }
        try {
            return (!com.mbridge.msdk.foundation.same.a.f34522z || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : String.valueOf(telephonyManager.getNetworkType());
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage(), th2);
            return "";
        }
    }

    public static String j(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                if (TextUtils.isEmpty(f34917k)) {
                    f34917k = ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
                }
            } else {
                f34917k = "";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f34917k = "";
        }
        return f34917k;
    }

    public static float o(Context context) {
        Resources resources;
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) && context != null && (resources = context.getResources()) != null) {
                return resources.getConfiguration().fontScale;
            }
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
        }
        return -1.0f;
    }

    public static int y() {
        try {
            if (!q0.a().a("v_a_d_p", false)) {
                return 0;
            }
            if (t0.i()) {
                f34921o = 1;
            } else if (t0.j()) {
                f34921o = 2;
            } else {
                f34921o = 0;
            }
        } catch (Exception e10) {
            f34921o = 0;
            o0.b("SameDiTool", e10.getMessage());
        }
        return f34921o;
    }

    public static String B(Context context) {
        if (context == null) {
            return B;
        }
        try {
            if (TextUtils.isEmpty(B)) {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                B = str;
                return str;
            }
            return B;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static int D() {
        if (f34920n == -1) {
            f34920n = t0.g() ? 1 : 0;
        }
        return f34920n;
    }

    public static void d(int i10) {
        f34923q = i10;
    }

    private static void i(Context context) {
        if (TextUtils.isEmpty(f34931y)) {
            try {
                f34931y = w0.a(context, "mbridge_ua", "").toString();
            } catch (Throwable th2) {
                o0.b("SameDiTool", th2.getMessage(), th2);
            }
        }
    }

    public static int n(Context context) {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) || context == null) {
            return 0;
        }
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            HashMap mapV = v(context);
            return mapV.get("width") == null ? displayMetrics.widthPixels : ((Integer) mapV.get("width")).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String p(Context context) {
        Locale locale;
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        if (TextUtils.isEmpty(f34922p)) {
            if (context == null) {
                return "en-US";
            }
            try {
                if (context.getResources() == null || context.getResources().getConfiguration() == null || (locale = context.getResources().getConfiguration().locale) == null) {
                    return "en-US";
                }
                String languageTag = locale.toLanguageTag();
                f34922p = languageTag;
                return languageTag;
            } catch (Throwable th2) {
                o0.a("SameDiTool", th2.getMessage());
                f34922p = "en-US";
            }
        }
        return f34922p;
    }

    public static int z() {
        try {
            if (t0.i()) {
                return 1;
            }
            return t0.j() ? 2 : 0;
        } catch (Exception e10) {
            o0.b("SameDiTool", e10.getMessage());
            return 0;
        }
    }

    public static void g() {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new e());
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
        }
    }

    public static int h() {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                return 0;
            }
            long j10 = F;
            if (j10 > 0) {
                return Long.valueOf((j10 / 1000) / 1000).intValue();
            }
            return -1;
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage(), th2);
            return -1;
        }
    }

    public static int m() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return Build.VERSION.SDK_INT;
        }
        return -1;
    }

    public static String x() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        if (TextUtils.isEmpty(H)) {
            long j10 = G;
            if (j10 > 0) {
                H = Math.ceil(Float.valueOf(j10 / 1.07374182E9f).doubleValue()) + "GB";
            }
        }
        return H;
    }

    public static boolean E(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static String a(String str, Context context) {
        try {
            if (!TextUtils.isEmpty(f34916j)) {
                return f34916j;
            }
            if (!TextUtils.isEmpty(str) && context != null) {
                f34916j = context.getPackageManager().getInstallerPackageName(str);
                o0.a("SameDiTool", "PKGSource:" + f34916j);
            }
            return f34916j;
        } catch (Exception e10) {
            o0.b("SameDiTool", e10.getMessage(), e10);
        }
    }

    public static String t() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    public static int v() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return 0;
        }
        long j10 = G;
        if (j10 > 0) {
            return Long.valueOf((j10 / 1000) / 1000).intValue();
        }
        return -1;
    }

    public static int w(Context context) {
        if (context == null) {
            return f34929w;
        }
        if (f34929w == 0) {
            try {
                f34929w = context.getApplicationInfo().targetSdkVersion;
            } catch (Exception e10) {
                o0.b("SameDiTool", e10.getMessage());
            }
        }
        return f34929w;
    }

    public static String k(Context context) {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) || context == null) {
                return TmcConstants.COLD_OPEN_TYPE;
            }
            AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            String str = new DecimalFormat("0.0").format((audioManager != null ? audioManager.getStreamVolume(3) : -1) / (audioManager != null ? audioManager.getStreamMaxVolume(3) : -1));
            return TextUtils.isEmpty(str) ? TmcConstants.COLD_OPEN_TYPE : str;
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
            return TmcConstants.COLD_OPEN_TYPE;
        }
    }

    public static String q() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        if (TextUtils.isEmpty(f34927u)) {
            f34927u = r() + "";
        }
        return f34927u;
    }

    public static int r() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String s() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.BRAND;
    }

    public static int u(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) && context != null) {
                return ((PowerManager) context.getSystemService("power")).isPowerSaveMode() ? 1 : 0;
            }
            return -1;
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
            return -1;
        }
    }

    public static int C() {
        return f34923q;
    }

    public static String l() {
        String str;
        if (!TextUtils.isEmpty(f34919m)) {
            return f34919m;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            str = (String) cls.getMethod("getOsBrand", null).invoke(cls, null);
        } catch (Throwable th2) {
            o0.b("SameDiTool", th2.getMessage());
            str = null;
        }
        try {
            if (!TextUtils.isEmpty(str) && str.equals("harmony")) {
                jSONObject.put("osType", str);
                try {
                    Class<?> cls2 = Class.forName("ohos.system.version.SystemVersion");
                    jSONObject.put("version", (String) cls2.getMethod("getVersion", null).invoke(cls2, null));
                } catch (Throwable th3) {
                    o0.b("SameDiTool", th3.getMessage());
                }
                try {
                    jSONObject.put("pure_state", Settings.Secure.getInt(com.mbridge.msdk.foundation.controller.c.m().d().getContentResolver(), "pure_mode_state", -1));
                } catch (Throwable th4) {
                    o0.b("SameDiTool", th4.getMessage());
                }
                String string = jSONObject.toString();
                if (!TextUtils.isEmpty(string)) {
                    string = i0.b(string);
                }
                f34919m = string;
            } else {
                f34919m = "android";
            }
        } catch (Throwable th5) {
            o0.b("SameDiTool", th5.getMessage());
        }
        return f34919m;
    }
}
