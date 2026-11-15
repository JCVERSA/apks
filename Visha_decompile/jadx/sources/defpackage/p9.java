package defpackage;

import com.cloud.hisavana.sdk.C0520g0;

public abstract class p9 {
    public static int a = 0;
    public static boolean b = false;

    public static boolean a() {
        return c() != 0;
    }

    public static String b() {
        return c() != 0 ? "https://minproject.test.sunnbird.com/close-report/index.html" : "https://minproject.sunnbird.com/close-report/index.html";
    }

    public static int c() {
        return a;
    }

    public static String d() {
        return "/hisavana/traffic-dispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlDataOffline";
    }

    public static String e() {
        int iC = c();
        if (iC == 0) {
            return "https://cc-api.hisavana.com";
        }
        if (iC == 2) {
            return "https://api-fat0101.eagllwin.com";
        }
        if (iC != 3) {
            return iC != 4 ? "https://api.test.hisavana.com" : "https://api.fat1.hisavana.com";
        }
        return "https://easymock.tmctool.com/mockurl/66f0d16c89ca3154e5a973ea";
    }

    public static String f() {
        return c() == 0 ? "https://dcdn-api.hisavana.com" : "https://dcdn-api.test.hisavana.com";
    }

    public static String g() {
        return c() != 0 ? C0520g0.a.z() : C0520g0.a.y();
    }

    public static String h() {
        int iC = c();
        if (iC != 0) {
            return iC != 4 ? "https://api.test.eagllwin.com" : "https://api.fat1.eagllwin.com";
        }
        return "https://api.eagllwin.com";
    }

    public static String i() {
        return "/hisavana/traffic-dispatch/v1/consumer-not-login/addispatch/query/getAdData";
    }

    public static String j() {
        int iC = c();
        if (iC == 0) {
            return "https://api.hisavana.com";
        }
        if (iC == 2) {
            return "https://api-fat0101.eagllwin.com";
        }
        if (iC != 3) {
            return iC != 4 ? "https://api.test.hisavana.com" : "https://api.fat1.hisavana.com";
        }
        return "https://easymock.tmctool.com/mockurl/66f0d16c89ca3154e5a973ea";
    }

    public static boolean k() {
        return b;
    }
}
