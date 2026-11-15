package defpackage;

import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.just.agentweb.DefaultWebClient;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.c;
import com.mgmi.f.f;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.UUID;

public abstract class g4d {
    public static String a() {
        return UUID.randomUUID().toString();
    }

    public static String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static String c(String str, String str2) {
        try {
            return str.substring(str.indexOf(str2) + str2.length());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String d(String str, String str2, String str3) {
        try {
            int iIndexOf = str.indexOf(str2) + str2.length();
            return str.substring(iIndexOf, str.indexOf(str3, iIndexOf));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String e(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String strReplace = str.replace("__OS__", "0").replace("__IP__", "0").replace("__UA__", mpd.E(c.a())).replace("__IMEI__", qwd.c(mpd.F(c.a()))).replace("__ANDROIDID__", qwd.a(mpd.v(c.a()))).replace("__DID__", f.l(c.a())).replace("__MAC__", qwd.c(mpd.p(c.a()))).replace("__MAKE__", mpd.b()).replace("__MODEL__", mpd.e()).replace("__VERSION__", f.e()).replace("__OSV__", f.d()).replace("__TS__", String.valueOf(System.currentTimeMillis()));
                String strK = f.k(c.a());
                if (!TextUtils.isEmpty(strK)) {
                    String[] strArrSplit = strK.split("\\,");
                    if (strArrSplit.length >= 2) {
                        strReplace = strReplace.replace("__LON__", strArrSplit[0]).replace("__LAT__", strArrSplit[1]);
                    }
                }
                return str2 != null ? strReplace.replace("__BID__", str2) : strReplace;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    public static boolean f() {
        String lowerCase = Build.BRAND;
        if (!TextUtils.isEmpty(lowerCase)) {
            lowerCase = lowerCase.toLowerCase();
            SourceKitLogger.a("isMyDevices", "brand = " + lowerCase);
            if (lowerCase.equals("huawei") || lowerCase.equals("vivo") || lowerCase.equals("redmi") || lowerCase.equals("oppo") || lowerCase.equals("xiaomi")) {
                Log.v("isMyDevices", "true brand = " + lowerCase);
                return true;
            }
        }
        SourceKitLogger.a("isMyDevices", "false brand = " + lowerCase);
        return false;
    }

    public static boolean g(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String[] h(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\?");
        if (strArrSplit.length > 0) {
            return strArrSplit[0].replace("https://", "").replace(DefaultWebClient.HTTP_SCHEME, "").split("/", 2);
        }
        return null;
    }

    public static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i = 0; i < bArrDigest.length; i++) {
                int i2 = bArrDigest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static int j(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String[] k(String str) {
        if (str == null) {
            return null;
        }
        return str.split("\\|\\|\\|");
    }

    public static boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith("gif") || str.endsWith(ImageFormats.V22_GIF_FORMAT);
    }

    public static boolean m(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(".apk")) {
            return false;
        }
        return str.startsWith(ProxyConfig.MATCH_HTTP) || str.startsWith(ProxyConfig.MATCH_HTTPS);
    }

    public static boolean n(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("MiniProgram");
    }

    public static boolean o(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith(".png") || str.endsWith(".jpg") || str.endsWith(".jpeg") || str.endsWith(".gif");
    }

    public static boolean p(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith("mp4") || str.endsWith("MP4") || str.endsWith("m3u8");
    }

    public static boolean q(String str) {
        return !TextUtils.isEmpty(str) && str.endsWith(".zip");
    }

    public static boolean r(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://")) ? false : true;
    }

    public static boolean s(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("hiapplink://");
    }

    public static boolean t(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("market://");
    }

    public static boolean u(String str) {
        if (m(str) || n(str)) {
            return false;
        }
        return r(str);
    }

    public static boolean v(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("imgotv://") || str.startsWith("omgotv://");
    }

    public static int w(String str) {
        if (str == null) {
            return 16777215;
        }
        try {
            if (!str.contains("#")) {
                str = "#" + str;
            }
            return Color.parseColor(str);
        } catch (IllegalArgumentException unused) {
            return 16777215;
        }
    }
}
