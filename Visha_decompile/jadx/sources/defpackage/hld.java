package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.system.Os;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.util.UUID;
import mgtv.qt.c;
import mgtv.qt.d;
import mgtv.qt.f;
import mgtv.qt.i;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class hld {
    public static String a = "";
    public static String b = "";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static String g = "";
    public static long h;
    public static JSONObject i;
    public static int j;

    /* JADX WARN: Multi-variable type inference failed */
    public static String A() throws Throwable {
        Exception e2;
        BufferedReader bufferedReader;
        int i2 = 1;
        i2 = 1;
        Object obj = "/proc/meminfo";
        String strTrim = "";
        Object obj2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
                try {
                    String line = bufferedReader.readLine();
                    strTrim = line.substring(line.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) + 1).trim();
                    Closeable[] closeableArr = {bufferedReader};
                    y4d.f(closeableArr);
                    i2 = closeableArr;
                    obj = bufferedReader;
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    Closeable[] closeableArr2 = {bufferedReader};
                    y4d.f(closeableArr2);
                    i2 = closeableArr2;
                    obj = bufferedReader;
                }
            } catch (Throwable th) {
                th = th;
                obj2 = obj;
                Closeable[] closeableArr3 = new Closeable[i2];
                closeableArr3[0] = obj2;
                y4d.f(closeableArr3);
                throw th;
            }
        } catch (Exception e4) {
            e2 = e4;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            Closeable[] closeableArr4 = new Closeable[i2];
            closeableArr4[0] = obj2;
            y4d.f(closeableArr4);
            throw th;
        }
        return strTrim;
    }

    public static String B(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        StringBuilder sb = new StringBuilder();
        int iIntValue = displayMetrics.widthPixels;
        int iIntValue2 = displayMetrics.heightPixels;
        try {
            iIntValue = ((Integer) Display.class.getMethod("getRawWidth", null).invoke(defaultDisplay, null)).intValue();
            iIntValue2 = ((Integer) Display.class.getMethod("getRawHeight", null).invoke(defaultDisplay, null)).intValue();
        } catch (Exception unused) {
        }
        try {
            Point point = new Point();
            Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
            iIntValue = point.x;
            iIntValue2 = point.y;
        } catch (Exception unused2) {
        }
        double d2 = iIntValue / displayMetrics.xdpi;
        double d3 = iIntValue2 / displayMetrics.ydpi;
        sb.append(String.format("%.1f", Double.valueOf(Math.sqrt((d2 * d2) + (d3 * d3)))));
        return sb.toString();
    }

    public static String C() {
        return "0M";
    }

    public static String D(Context context) {
        return b(context, false);
    }

    public static String E() {
        return "";
    }

    public static String F(Context context) {
        return h(context, false);
    }

    public static int G() {
        int i2 = j;
        if (i2 != 0) {
            return i2;
        }
        try {
            j = new File("/sys/devices/system/cpu/").listFiles(new gmd()).length;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (j <= 0) {
            j = Runtime.getRuntime().availableProcessors();
        }
        if (j <= 0) {
            j = 1;
        }
        return j;
    }

    public static JSONObject H(Context context) throws JSONException, PackageManager.NameNotFoundException {
        JSONObject jSONObject = i;
        if (jSONObject == null || !jSONObject.keys().hasNext()) {
            i = new JSONObject();
            try {
                PackageManager packageManager = context.getPackageManager();
                String packageName = context.getPackageName();
                i.put("appid", packageName);
                if (packageManager != null) {
                    PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                    long j2 = packageInfo.firstInstallTime;
                    long j3 = packageInfo.lastUpdateTime;
                    i.put("instime", j2);
                    i.put("uptime", j3);
                    i.put("installer", "");
                }
            } catch (Throwable unused) {
            }
        }
        return i;
    }

    public static long I() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String J(Context context) {
        try {
            NetworkInfo networkInfoL = L(context);
            if (networkInfoL == null || !networkInfoL.isConnected()) {
                return "";
            }
            if (networkInfoL.getType() == 1) {
                return "WIFI";
            }
            if (networkInfoL.getType() != 0) {
                return "";
            }
            String subtypeName = networkInfoL.getSubtypeName();
            switch (networkInfoL.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return "2G";
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return "3G";
                case 13:
                    return "4G";
                default:
                    if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                        return subtypeName;
                    }
                    return "3G";
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static int K() {
        return -1;
    }

    public static NetworkInfo L(Context context) {
        ConnectivityManager connectivityManager;
        try {
            if (!l(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String M() {
        try {
            return Build.MODEL;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String N(Context context) {
        if (TextUtils.isEmpty(c.d)) {
            try {
                String strG = g(context, "ANDROID_I_K");
                if (TextUtils.isEmpty(strG)) {
                    strG = UUID.randomUUID().toString();
                    c(context, "ANDROID_I_K", strG);
                }
                c.d = strG;
            } catch (Exception unused) {
            }
        }
        return c.d;
    }

    public static String a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        String str2 = File.separator;
        sb.append(str2);
        sb.append(".qmt");
        sb.append(str2);
        return sb.toString() + "/cache2/" + str;
    }

    public static String b(Context context, boolean z) throws Throwable {
        if (z) {
            return "";
        }
        try {
            d dVar = (d) f.c(context).f("iim");
            if (dVar == null) {
                dVar = new d();
            }
            String strA = dVar.a();
            if (!y4d.i(strA)) {
                return strA;
            }
            if (!y4d.i("")) {
                dVar.a("");
                f.c(context).d("iim", dVar);
                return "";
            }
        } catch (Exception unused) {
        }
        return "emt";
    }

    public static void c(Context context, String str, String str2) {
        try {
            i.d(str2, a(context, str), false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean d() {
        return false;
    }

    public static boolean e(Context context) {
        if (!c.c) {
            return false;
        }
        try {
            NetworkInfo networkInfoL = L(context);
            return networkInfoL != null && networkInfoL.isConnected() && networkInfoL.getState() == NetworkInfo.State.CONNECTED;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    public static String f() {
        return Application.getProcessName();
    }

    public static String g(Context context, String str) {
        try {
            File file = new File(a(context, str));
            return (file.exists() && file.isFile()) ? i.e(file).trim() : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String h(Context context, boolean z) throws Throwable {
        if (z) {
            return "";
        }
        d dVar = (d) f.c(context).f("iim");
        if (dVar == null) {
            dVar = new d();
        }
        String strB = dVar.b();
        if (!y4d.i(strB)) {
            return strB;
        }
        if (y4d.i("")) {
            return "";
        }
        dVar.b("");
        f.c(context).d("iim", dVar);
        return "";
    }

    public static void i(Context context) {
        String strValueOf;
        if (y4d.h(context, "___swssid___", 300L)) {
            try {
                NetworkInfo networkInfoL = L(context);
                if (networkInfoL != null && networkInfoL.isConnected() && networkInfoL.getType() == 1) {
                    strValueOf = "WiFi";
                } else {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (telephonyManager != null && l(context, "android.permission.READ_PHONE_STATE")) {
                        int networkType = telephonyManager.getNetworkType();
                        switch (networkType) {
                            case 0:
                                strValueOf = "UNKNOWN";
                                break;
                            case 1:
                                strValueOf = "GPRS";
                                break;
                            case 2:
                                strValueOf = "EDGE";
                                break;
                            case 3:
                                strValueOf = "UMTS";
                                break;
                            case 4:
                                strValueOf = "CDMA";
                                break;
                            case 5:
                                strValueOf = "EVDO_0";
                                break;
                            case 6:
                                strValueOf = "EVDO_A";
                                break;
                            case 7:
                                strValueOf = "1XRTT";
                                break;
                            case 8:
                                strValueOf = "HSDPA";
                                break;
                            case 9:
                                strValueOf = "HSUPA";
                                break;
                            case 10:
                                strValueOf = "HSPA";
                                break;
                            case 11:
                                strValueOf = "IDEN";
                                break;
                            case 12:
                                strValueOf = "EVDO_B";
                                break;
                            case 13:
                                strValueOf = "LTE";
                                break;
                            case 14:
                                strValueOf = "EHRPD";
                                break;
                            case 15:
                                strValueOf = "HSPAP";
                                break;
                            case 16:
                                strValueOf = "GSM";
                                break;
                            case 17:
                                strValueOf = "TD_SCDMA";
                                break;
                            case 18:
                                strValueOf = "IWLAN";
                                break;
                            case 19:
                            default:
                                strValueOf = String.valueOf(networkType);
                                break;
                            case 20:
                                strValueOf = "NR";
                                break;
                        }
                    } else {
                        strValueOf = "";
                    }
                }
                c(context, "wsidcache", strValueOf);
            } catch (Exception unused) {
            }
        }
    }

    public static String j() {
        return "";
    }

    public static String k(Context context) {
        if (TextUtils.isEmpty(a)) {
            String strG = g(context, "wsidcache");
            if (strG == null) {
                strG = "";
            }
            a = strG.replace("\n", "");
        }
        return a;
    }

    public static boolean l(Context context, String str) {
        if (context != null) {
            try {
                return context.checkPermission(str, Process.myPid(), Os.getuid()) == 0;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static String m() {
        return TextUtils.isEmpty(e) ? "-" : e;
    }

    public static String n(Context context) {
        if (TextUtils.isEmpty(b)) {
            b = (String) sjd.f(context, "oaidspkey", "");
        }
        return b;
    }

    public static String o() {
        return q() + " " + M();
    }

    public static String p(Context context) {
        if (TextUtils.isEmpty(c)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                c = packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString().trim();
            } catch (Exception unused) {
            }
        }
        return c;
    }

    public static String q() {
        try {
            return Build.MANUFACTURER;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String r(Context context) {
        if (TextUtils.isEmpty(d)) {
            try {
                d = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName.replace(" ", "");
            } catch (Exception unused) {
            }
        }
        return d;
    }

    public static String s() {
        try {
            return Build.BRAND;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void t(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            d = packageInfo.versionName.replace(" ", "");
            c = packageInfo.applicationInfo.loadLabel(packageManager).toString().trim();
            JSONObject jSONObject = new JSONObject();
            i = jSONObject;
            jSONObject.put("instime", packageInfo.firstInstallTime);
            i.put("uptime", packageInfo.lastUpdateTime);
            i.put("installer", "");
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                return;
            }
            dpd.a(new String(signatureArr[0].toByteArray()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String u() {
        return Build.VERSION.RELEASE;
    }

    public static String v(Context context) {
        String strN = N(context);
        return TextUtils.isEmpty(strN) ? N(context) : strN;
    }

    public static String w() {
        if (TextUtils.isEmpty(g) && System.currentTimeMillis() - h > DateUtils.MILLIS_PER_HOUR) {
            h = System.currentTimeMillis();
            g = "";
        }
        return g;
    }

    public static String x(Context context) {
        return N(context);
    }

    public static String y() {
        return "";
    }

    public static String z(Context context) {
        if (TextUtils.isEmpty(f)) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            int width = defaultDisplay.getWidth();
            f = defaultDisplay.getHeight() + "*" + width;
        }
        return f;
    }
}
