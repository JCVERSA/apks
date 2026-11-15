package com.hunantv.imgo.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.BaseApplication;
import com.mgtv.easydatasource.flowreporter.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b {
    private static String A = null;
    private static String B = null;
    private static String C = null;
    private static String D = null;
    private static String E = null;
    private static String F = null;
    private static boolean G = true;
    private static boolean H = false;
    private static String I = null;
    private static String J = null;
    private static String K = "";
    private static boolean L = true;
    private static boolean M = false;
    private static boolean N = false;
    private static boolean O = false;
    private static boolean P = false;
    private static boolean Q = false;
    private static boolean R = false;
    private static boolean S = false;
    private static int T = 0;
    private static long U = 0;
    private static boolean V = false;
    private static String a = null;
    private static String b = null;
    private static int c = 0;
    private static String d = null;
    private static String e = "";
    private static String f = null;
    private static String g = null;
    private static String h = "";
    private static String i = "";
    private static int j = 0;
    private static long k = 0;
    private static String l = "";
    private static String m = "";
    private static String n = "";
    private static String o = "";
    private static String p = "";
    private static int q;
    private static String r;
    private static String s;
    private static String t;
    private static String u;
    private static String v;
    private static String w;
    private static String x;
    private static String y;
    private static String z;

    public static String A() {
        return r;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String B() throws Throwable {
        FileReader fileReader;
        String str;
        String strReplaceAll;
        String str2 = "";
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(fileReader, 8192);
                    try {
                        try {
                            strReplaceAll = bufferedReader2.readLine().replaceAll(" ", "");
                            try {
                                String strReplaceAll2 = bufferedReader2.readLine().replaceAll(" ", "");
                                String[] strArrSplit = strReplaceAll.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                                String[] strArrSplit2 = strReplaceAll2.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                                String str3 = strArrSplit[1];
                                int iA = q.a(str3.substring(0, str3.length() - 2));
                                String str4 = strArrSplit2[1];
                                strReplaceAll = "Total:" + (iA / 1024) + "MB";
                                str2 = "Free:" + (q.a(str4.substring(0, str4.length() - 2)) / 1024) + "MB";
                                bufferedReader2.close();
                                try {
                                    bufferedReader2.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                                try {
                                    fileReader.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            } catch (Exception e4) {
                                e = e4;
                                str = str2;
                                str2 = strReplaceAll;
                                bufferedReader = bufferedReader2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                    }
                                }
                                if (fileReader != null) {
                                    try {
                                        fileReader.close();
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                strReplaceAll = str2;
                                str2 = str;
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            }
                            if (fileReader == null) {
                                throw th;
                            }
                            try {
                                fileReader.close();
                                throw th;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                throw th;
                            }
                        }
                    } catch (Exception e9) {
                        e = e9;
                        bufferedReader = bufferedReader2;
                        str = "";
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        strReplaceAll = str2;
                        str2 = str;
                        return strReplaceAll + " " + str2;
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
            str = "";
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
        return strReplaceAll + " " + str2;
    }

    public static String C() {
        int availableBlocks;
        if (Environment.getExternalStorageState().equals("mounted")) {
            StatFs statFs = new StatFs(j.a());
            availableBlocks = ((statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1024) / 1024;
        } else {
            availableBlocks = 0;
        }
        return availableBlocks + "MB";
    }

    /* JADX WARN: Code duplicated, block: B:46:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[SYNTHETIC] */
    public static String D() throws Throwable {
        FileReader fileReader;
        Exception e2;
        BufferedReader bufferedReader;
        String strReplaceAll = "";
        BufferedReader bufferedReader2 = null;
        try {
            try {
                fileReader = new FileReader("/proc/cpuinfo");
                try {
                    bufferedReader = new BufferedReader(fileReader, 8192);
                    try {
                        try {
                            strReplaceAll = bufferedReader.readLine().split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].replaceAll(" ", "");
                            bufferedReader.close();
                            try {
                                bufferedReader.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            fileReader.close();
                        } catch (Exception e4) {
                            e2 = e4;
                            e2.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e5) {
                                    e5.printStackTrace();
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            return strReplaceAll;
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (Exception e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (fileReader != null) {
                            throw th;
                        }
                        try {
                            fileReader.close();
                            throw th;
                        } catch (Exception e7) {
                            e7.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Exception e8) {
                    e2 = e8;
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    if (fileReader != null) {
                        throw th;
                    }
                    fileReader.close();
                    throw th;
                }
            } catch (Exception e9) {
                e9.printStackTrace();
            }
        } catch (Exception e10) {
            fileReader = null;
            e2 = e10;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
        return strReplaceAll;
    }

    public static String E() {
        if (!TextUtils.isEmpty(n)) {
            return n;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")), 1000);
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                n.a("AppBaseInfoUtil", "chip:" + line);
                Matcher matcher = Pattern.compile("Hardware\\s+\\:\\s*(.*)").matcher(line);
                if (matcher.find()) {
                    n = matcher.group(1);
                    break;
                }
            }
            bufferedReader.close();
        } catch (IOException unused) {
        }
        return n;
    }

    @Deprecated
    public static String F() {
        return Build.BRAND;
    }

    public static String G() {
        if (TextUtils.isEmpty(f)) {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                f = "ImgoTV-aphone/imgotv-aplsdk-" + a;
            } else {
                StringBuilder sb = new StringBuilder();
                int length = property.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char cCharAt = property.charAt(i2);
                    if (cCharAt <= 31 || cCharAt >= 127) {
                        sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                    } else {
                        sb.append(cCharAt);
                    }
                }
                f = sb.toString() + "ImgoTV-aphone/imgotv-aplsdk-" + a;
            }
        }
        return f;
    }

    @Deprecated
    public static String H() {
        String networkOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) BaseApplication.getContext().getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            networkOperator = telephonyManager.getNetworkOperator();
        } catch (Exception e2) {
            e2.printStackTrace();
            networkOperator = null;
        }
        return networkOperator == null ? "" : networkOperator;
    }

    public static String I() throws Throwable {
        if (!TextUtils.isEmpty(o)) {
            return o;
        }
        String[] strArr = {"", ""};
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
                    try {
                        String[] strArrSplit = bufferedReader2.readLine().split("\\s+");
                        for (int i2 = 2; i2 < strArrSplit.length; i2++) {
                            strArr[0] = strArr[0] + strArrSplit[i2] + " ";
                        }
                        strArr[1] = strArr[1] + bufferedReader2.readLine().split("\\s+")[2];
                        bufferedReader2.close();
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        String str = strArr[0];
                        o = str;
                        return str;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (Exception e5) {
                e = e5;
            }
            String str2 = strArr[0];
            o = str2;
            return str2;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Deprecated
    public static String J() {
        try {
            String strV = v();
            return strV == null ? "" : strV.replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static String K() {
        return PreferencesUtil.c("recommend_guid", "");
    }

    public static String L() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        WifiManager wifiManager;
        if (!TextUtils.isEmpty(l)) {
            return l;
        }
        Context context = BaseApplication.getContext();
        if (context == null) {
            return "";
        }
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Throwable unused) {
            connectivityManager = null;
        }
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            try {
                if (activeNetworkInfo.getType() != 0) {
                    if (activeNetworkInfo.getType() != 1 || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) == null) {
                        return null;
                    }
                    return b(wifiManager.getConnectionInfo().getIpAddress());
                }
                try {
                    Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                    while (networkInterfaces.hasMoreElements()) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                                return inetAddressNextElement.getHostAddress();
                            }
                        }
                    }
                } catch (SocketException e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return null;
    }

    public static String M() {
        return f() ? "intelmgtv" : "mgtv";
    }

    public static String N() {
        return f() ? "unionintelapp" : "unionapp";
    }

    public static String O() {
        return f() ? "unionintelapp" : "unionapp";
    }

    public static String P() {
        return h;
    }

    public static String Q() {
        return s;
    }

    public static String R() {
        String str = t;
        return str == null ? "" : str;
    }

    public static String S() {
        return v;
    }

    public static boolean T() {
        return V;
    }

    public static String U() {
        String str = A;
        return str == null ? "" : str;
    }

    public static String V() {
        String str = B;
        return str == null ? "" : str;
    }

    public static String W() {
        return u;
    }

    public static String X() {
        return C;
    }

    public static boolean Y() {
        return G;
    }

    public static boolean Z() {
        return H;
    }

    public static String a() {
        return i;
    }

    public static String aa() {
        return I;
    }

    public static boolean ab() {
        return L;
    }

    public static boolean ac() {
        return M;
    }

    public static boolean ad() {
        return N;
    }

    public static int ae() {
        return j;
    }

    public static boolean af() {
        return O;
    }

    public static boolean ag() {
        return P;
    }

    public static boolean ah() {
        return Q;
    }

    public static boolean ai() {
        return R;
    }

    public static String aj() {
        return J;
    }

    public static String ak() {
        return D;
    }

    public static String b() {
        return b;
    }

    public static String c() {
        return BaseApplication.getContext().getPackageName();
    }

    public static void d(String str) {
        g = str;
    }

    public static void e(String str) {
        d = str;
    }

    public static void f(String str) {
        p = str;
    }

    public static String g() {
        return "imgotv-aplsdk-" + e();
    }

    public static String h() {
        return g;
    }

    public static int i() {
        if (c <= 0) {
            try {
                c = BaseApplication.getContext().getPackageManager().getPackageInfo(BaseApplication.getContext().getPackageName(), 16384).versionCode;
            } catch (Exception e2) {
                e2.printStackTrace();
                c = 0;
            }
        }
        return c;
    }

    public static int j() {
        return q;
    }

    public static String k() {
        return g.a().e();
    }

    public static String l() {
        return "";
    }

    @Deprecated
    public static int m() {
        return 0;
    }

    public static String n() {
        return !TextUtils.isEmpty(F) ? F : PreferencesUtil.c("uuid", "");
    }

    public static String o() {
        return "";
    }

    public static String p() {
        return Build.MODEL;
    }

    public static String q() {
        return Build.VERSION.RELEASE;
    }

    public static String r() {
        return "aphone-" + q();
    }

    public static String s() {
        return Build.MANUFACTURER;
    }

    public static String t() {
        return g.a().d();
    }

    public static String u() {
        return g.a().c();
    }

    public static String v() {
        return !TextUtils.isEmpty(m) ? m : com.hunantv.imgo.safe.a.a().d();
    }

    public static String w() {
        try {
            WifiInfo connectionInfo = ((WifiManager) BaseApplication.getContext().getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return null;
            }
            return connectionInfo.getSSID();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String x() {
        return r;
    }

    public static String y() {
        return r;
    }

    public static String z() {
        return "union_app";
    }

    public static void a(String str) {
        i = str;
    }

    public static void b(String str) {
        b = str;
    }

    public static void c(String str) {
        a = str;
    }

    public static String d() {
        return "m#dHoA3u*V";
    }

    public static String e() {
        if (a == null) {
            try {
                a = BaseApplication.getContext().getPackageManager().getPackageInfo(BaseApplication.getContext().getPackageName(), 16384).versionName;
            } catch (Exception e2) {
                com.hunantv.imgo.log.e.a("AppBaseInfoUtil", e2.getMessage(), e2, true);
                return BuildConfig.VERSION_NAME;
            }
        }
        return a;
    }

    public static boolean f() {
        return S;
    }

    public static void g(String str) {
        F = str;
        PreferencesUtil.a("uuid", str);
    }

    public static void h(String str) {
        r = str;
    }

    public static void j(String str) {
        t = str;
    }

    public static void k(String str) {
        v = str;
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            str = ak();
        }
        if ("card".equalsIgnoreCase(str)) {
            return y;
        }
        if ("immersion".equalsIgnoreCase(str)) {
            return z;
        }
        return "detail".equalsIgnoreCase(str) ? x : w;
    }

    public static void m(String str) {
        w = str;
    }

    public static void o(String str) {
        B = str;
    }

    public static void p(String str) {
        u = str;
    }

    public static void q(String str) {
        System.out.println("wwwww 11 setFingerprint fingerprint " + str);
        C = str;
    }

    public static void r(String str) {
        E = str;
    }

    public static void s(String str) {
        I = str;
    }

    public static void t(String str) {
        J = str;
    }

    public static void a(boolean z2) {
        S = z2;
    }

    public static String b(boolean z2) {
        if (z2) {
            return "imgotv-aplsdk-" + e() + ".1";
        }
        return "imgotv-aplsdk-" + e();
    }

    public static void c(boolean z2) {
        G = z2;
    }

    public static void d(boolean z2) {
        H = z2;
    }

    public static void f(boolean z2) {
        M = z2;
    }

    public static void h(boolean z2) {
        O = z2;
    }

    public static void j(boolean z2) {
        Q = z2;
    }

    public static void k(boolean z2) {
        R = z2;
    }

    public static void a(int i2) {
        q = i2;
    }

    public static void c(int i2) {
        j = i2;
    }

    public static void g(boolean z2) {
        N = z2;
    }

    public static void n(String str) {
        A = str;
    }

    public static void a(String str, String str2) {
        D = str2;
        if ("card".equalsIgnoreCase(str2)) {
            y = str;
            return;
        }
        if ("immersion".equalsIgnoreCase(D)) {
            z = str;
        } else if ("detail".equalsIgnoreCase(D)) {
            x = str;
        } else {
            w = str;
        }
    }

    public static String b(int i2) {
        return (i2 & 255) + Consts.DOT + ((i2 >> 8) & 255) + Consts.DOT + ((i2 >> 16) & 255) + Consts.DOT + ((i2 >> 24) & 255);
    }

    public static void i(String str) {
        s = str;
    }

    public static void e(boolean z2) {
        L = z2;
    }

    public static void i(boolean z2) {
        P = z2;
    }
}
