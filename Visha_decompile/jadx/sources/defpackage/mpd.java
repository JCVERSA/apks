package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.alibaba.android.arouter.utils.Consts;
import com.doman.core.CoreMain;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.c;
import com.mgmi.f.f;
import com.mgmi.ssp.MGTVAdFactory;
import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

public abstract class mpd {
    public static String a = null;
    public static String b = null;
    public static Point c = null;
    public static int d = 1;
    public static long e;
    public static long f;
    public static String g;
    public static String h;

    public class a implements FileFilter {
        @Override
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    public static int A(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static boolean B() {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? false : true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static String C(Context context) {
        String networkOperator;
        try {
            networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        } catch (Exception e2) {
            e2.printStackTrace();
            networkOperator = null;
        }
        return networkOperator == null ? "" : networkOperator;
    }

    public static void D(Context context) {
        String userAgentString;
        String defaultUserAgent;
        String string = "";
        String strB = u3d.b(context, "mgmi_user_agent", "");
        String strJ = J(context);
        if (TextUtils.isEmpty(strB) || !TextUtils.isEmpty(strJ)) {
            try {
                defaultUserAgent = WebSettings.getDefaultUserAgent(context);
            } catch (Exception e2) {
                try {
                    userAgentString = new WebView(context).getSettings().getUserAgentString();
                } catch (Exception e3) {
                    String property = System.getProperty("http.agent");
                    e3.printStackTrace();
                    userAgentString = property;
                }
                e2.printStackTrace();
                defaultUserAgent = userAgentString;
            }
            if (!TextUtils.isEmpty(defaultUserAgent)) {
                StringBuilder sb = new StringBuilder();
                int length = defaultUserAgent.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = defaultUserAgent.charAt(i);
                    if (cCharAt <= 31 || cCharAt >= 127) {
                        sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                    } else {
                        sb.append(cCharAt);
                    }
                }
                string = sb.toString();
            }
            u3d.g(context, "mgmi_user_agent", string);
            a = string + " ImgoTV-aphone/" + f.f() + Consts.DOT + znd.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
            if (TextUtils.isEmpty(strJ)) {
                return;
            }
            u3d.g(context, "mgmi_system_version", strJ);
        }
    }

    public static String E(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String strB = u3d.b(context, "mgmi_user_agent", "");
        if (TextUtils.isEmpty(strB)) {
            return k();
        }
        String str = strB + " ImgoTV-aphone/" + f.f() + Consts.DOT + znd.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
        a = str;
        return str;
    }

    public static String F(Context context) {
        if (b == null) {
            return K(context);
        }
        SourceKitLogger.a("mgmi", "getImei=" + b);
        return b;
    }

    public static String G(Context context) {
        String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        if ("46001".equals(networkOperator) || "46006".equals(networkOperator) || "46009".equals(networkOperator)) {
            return "中国联通";
        }
        if ("46000".equals(networkOperator) || "46002".equals(networkOperator) || "46004".equals(networkOperator) || "46007".equals(networkOperator)) {
            return "中国移动";
        }
        return ("46003".equals(networkOperator) || "46005".equals(networkOperator) || "46011".equals(networkOperator)) ? "中国电信" : "";
    }

    public static String H(Context context) {
        String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        if ("46001".equals(networkOperator) || "46006".equals(networkOperator) || "46009".equals(networkOperator)) {
            return "unicom";
        }
        if ("46000".equals(networkOperator) || "46002".equals(networkOperator) || "46004".equals(networkOperator) || "46007".equals(networkOperator)) {
            return "mobile";
        }
        return ("46003".equals(networkOperator) || "46005".equals(networkOperator) || "46011".equals(networkOperator)) ? "telecom" : "";
    }

    public static String I(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return string == null ? "" : string;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String J(Context context) {
        try {
            String strH = h();
            return (TextUtils.isEmpty(strH) || strH.equalsIgnoreCase(u3d.b(context, "mgmi_system_version", ""))) ? "" : strH;
        } catch (Throwable unused) {
        }
    }

    public static String K(Context context) {
        return "";
    }

    public static int a(Context context) {
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String b() {
        return Build.BRAND;
    }

    public static void c(Point point) {
        int i = point.x;
        int i2 = point.y;
        if (i > i2) {
            point.y = i;
            point.x = i2;
        }
    }

    public static Point d(Context context) {
        int i;
        Point point = c;
        if (point != null) {
            int i2 = point.x;
            if (i2 != 0 && (i = point.y) != 0) {
                if (i2 > i) {
                    point.y = i2;
                    point.x = i;
                }
                return point;
            }
        } else {
            c = new Point();
        }
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            defaultDisplay.getMetrics(new DisplayMetrics());
            Point point2 = new Point();
            defaultDisplay.getRealSize(point2);
            int i3 = point2.x;
            int i4 = point2.y;
            Point point3 = c;
            point3.x = i3;
            point3.y = i4;
            if (i3 > i4) {
                point3.y = i3;
                point3.x = i4;
            }
            return point3;
        } catch (Exception unused) {
            c.x = a(context);
            c.y = n(context);
            Point point4 = c;
            int i5 = point4.x;
            int i6 = point4.y;
            if (i5 > i6) {
                point4.y = i5;
                point4.x = i6;
            }
            return point4;
        }
    }

    public static String e() {
        return Build.MODEL;
    }

    public static String f(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
            return packageInfo == null ? "" : String.valueOf(packageInfo.versionCode);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int g(Context context) {
        int iA = a(context);
        int iN = n(context);
        return iA > iN ? iA : iN;
    }

    public static String h() {
        String str = Build.VERSION.RELEASE;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("Android")) {
            return str;
        }
        return "Android " + str;
    }

    public static int i(Context context) {
        int iA = a(context);
        int iN = n(context);
        return iA > iN ? iN : iA;
    }

    public static String j() {
        return Build.ID;
    }

    public static String k() {
        return ("Mozilla/5.0 (Linux; " + h() + "; " + e() + " Build/" + j() + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36") + " ImgoTV-aphone/" + f.f() + Consts.DOT + znd.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
    }

    public static boolean l(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation") == 0;
        } catch (Settings.SettingNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static int m() {
        int i = d;
        if (i > 1) {
            return i;
        }
        try {
            int length = new File("/sys/devices/system/cpu/").listFiles(new a()).length;
            d = length;
            return length;
        } catch (Throwable th) {
            th.printStackTrace();
            return 1;
        }
    }

    public static int n(Context context) {
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static long o() {
        long j = e;
        if (j > 0) {
            return j;
        }
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long blockSize = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
                e = blockSize;
                return blockSize;
            }
        } catch (Throwable unused) {
        }
        return 0L;
    }

    public static String p(Context context) {
        CoreMain.getInstance().setMacAddress("");
        return "";
    }

    public static int q(Context context) {
        return 32;
    }

    public static long r() {
        long j = f;
        if (j > 0) {
            return j;
        }
        try {
            StatFs statFs = new StatFs(Environment.getRootDirectory().getPath());
            f = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
        } catch (Throwable unused) {
        }
        return f;
    }

    public static String s() {
        return f(c.a(), "com.huawei.appmarket");
    }

    public static String t(Context context) {
        return String.valueOf(context.getResources().getDisplayMetrics().widthPixels) + "*" + String.valueOf(context.getResources().getDisplayMetrics().heightPixels);
    }

    public static String u() {
        return f(c.a(), "com.huawei.hwid");
    }

    public static String v(Context context) {
        if (g == null) {
            g = I(context);
        }
        String str = g;
        return str == null ? "" : str;
    }

    public static String w() {
        return Build.MANUFACTURER;
    }

    public static String x(Context context) {
        Exception e2;
        String strV;
        String string;
        String str = h;
        if (str != null) {
            return str;
        }
        try {
            String did = MGTVAdFactory.getInstance().getDid();
            h = did;
            if (!TextUtils.isEmpty(did)) {
                return h;
            }
            try {
                strV = v(context);
                try {
                    string = TextUtils.equals("9774d56d682e549c", strV) ? null : strV;
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                }
            } catch (Exception e4) {
                e2 = e4;
                strV = null;
            }
            if (TextUtils.isEmpty(string)) {
                string = UUID.randomUUID().toString();
            }
            h = qwd.a(string);
            return h;
        } catch (Throwable unused) {
            h = "";
        }
    }

    public static int y(Context context) {
        if (context == null || context.getResources() == null) {
            return 1;
        }
        return context.getResources().getConfiguration().orientation;
    }

    public static boolean z() {
        try {
            return Settings.Secure.getInt(c.a().getContentResolver(), "adb_enabled", 0) > 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
