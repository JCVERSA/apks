package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

public abstract class vj7 {
    public static ObjectLogUtils a = new ObjectLogUtils.a().p("PalmSDK").q(true).r(false).n(false).m();

    public static Intent a(Context context, boolean z) {
        Intent intent = new Intent("intent.action.PALM_ACCOUNT_AUTH");
        PackageManager packageManager = context.getPackageManager();
        try {
            Bundle bundle = packageManager.getApplicationInfo("tech.palm.id", 128).metaData;
            if (bundle != null && bundle.getString("palm_sdk_version", "").compareTo("1.0.0.4") >= 0) {
                a.g("palm_sdk_version = " + bundle.getString("palm_sdk_version", ""));
                intent.setPackage("tech.palm.id");
                intent.putExtra("host_mode", false);
                return intent;
            }
        } catch (Exception unused) {
        }
        try {
            String string = context.getSharedPreferences("palm_config", 0).getString("palm_app_array", null);
            if (string != null && string.length() > 0) {
                Iterator<String> itKeys = new JSONObject(string).keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        Bundle bundle2 = packageManager.getApplicationInfo(next, 128).metaData;
                        if (bundle2 != null && bundle2.getString("palm_sdk_version", "").compareTo("1.0.0.4") >= 0) {
                            intent.setPackage(next);
                            intent.putExtra("host_mode", false);
                            return intent;
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        } catch (Exception unused3) {
        }
        if (!z) {
            try {
                String string2 = Settings.Global.getString(context.getContentResolver(), "host_palm_app");
                a.g("hostPalmApp = " + string2);
                if (!TextUtils.isEmpty(string2) && !TextUtils.equals(string2, context.getPackageName())) {
                    try {
                        Bundle bundle3 = packageManager.getApplicationInfo(string2, 128).metaData;
                        if (bundle3 != null && bundle3.getString("palm_sdk_version", "").compareTo("1.0.0.4") >= 0) {
                            intent.setPackage(string2);
                            intent.putExtra("host_mode", true);
                            return intent;
                        }
                    } catch (Exception unused4) {
                    }
                }
            } catch (Exception e) {
                a.i(Log.getStackTraceString(e));
            }
        }
        return null;
    }

    public static Bundle b(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length != 0) {
                    try {
                        String strDecode = URLDecoder.decode(strArrSplit[0], "UTF-8");
                        if (!TextUtils.isEmpty(strDecode)) {
                            bundle.putString(strDecode, strArrSplit.length == 2 ? URLDecoder.decode(strArrSplit[1], "UTF-8") : "");
                        }
                    } catch (Exception e) {
                        a.i(Log.getStackTraceString(e));
                    }
                }
            }
        }
        return bundle;
    }

    public static String c(int i) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyz".charAt(random.nextInt(36)));
        }
        return sb.toString();
    }

    public static String d(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                return null;
            }
            byte[] bArrDigest = messageDigest.digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            return sb.toString().toUpperCase();
        } catch (Exception e) {
            a.i(Log.getStackTraceString(e));
            return null;
        }
    }

    public static String e(Map map) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(String.format("%s=%s", URLEncoder.encode((String) entry.getKey(), "UTF-8"), URLEncoder.encode(entry.getValue().toString(), "UTF-8")));
            }
        } catch (Exception e) {
            a.i(Log.getStackTraceString(e));
        }
        return sb.toString();
    }

    public static Bundle f(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            String strSubstring = str.substring(iIndexOf + 1);
            if (strSubstring.startsWith("code=") || strSubstring.contains("&code=")) {
                return b(strSubstring);
            }
            if (strSubstring.startsWith("error=") || strSubstring.contains("&error=")) {
                return b(strSubstring);
            }
            return null;
        }
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf2 <= 0) {
            return null;
        }
        String strSubstring2 = str.substring(iIndexOf2 + 1);
        if (strSubstring2.startsWith("access_token=") || strSubstring2.contains("&access_token=")) {
            return b(str.replace("#", "?"));
        }
        if (strSubstring2.startsWith("error=") || strSubstring2.contains("&error=")) {
            return b(str.replace("#", "?"));
        }
        return null;
    }

    public static String g(Context context) {
        String processName;
        try {
            processName = Application.getProcessName();
        } catch (Exception e) {
            e.printStackTrace();
            processName = null;
        }
        return TextUtils.isEmpty(processName) ? context.getPackageName() : processName;
    }

    public static boolean h(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean i(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo("tech.palm.id", 128).metaData;
            if (bundle != null) {
                String string = bundle.getString("palm_sdk_version", "");
                if (!TextUtils.isEmpty(string) && string.compareTo("1.0.2.09") >= 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = a;
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to get SDK version for package: ");
            sb.append("tech.palm.id");
            sb.append(", error: ");
            oj7.a(e, sb, objectLogUtils);
        }
        return false;
    }
}
