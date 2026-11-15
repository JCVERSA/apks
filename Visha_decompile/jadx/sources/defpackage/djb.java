package defpackage;

import android.net.Uri;
import android.webkit.URLUtil;
import java.util.HashMap;
import java.util.Map;

public abstract class djb {
    public static String a(String str) {
        String str2;
        String strTrim = str.trim();
        String[] strArrSplit = strTrim.split("[?]");
        if (strTrim.length() <= 1 || strArrSplit.length <= 1 || (str2 = strArrSplit[1]) == null) {
            return null;
        }
        return str2;
    }

    public static String b(String str) {
        Uri uri = Uri.parse(str);
        return uri != null ? uri.getHost() : str;
    }

    public static Map c(String str) {
        HashMap map = new HashMap();
        String strA = a(str);
        if (strA == null) {
            return map;
        }
        for (String str2 : strA.split("[&]")) {
            String[] strArrSplit = str2.split("[=]");
            if (strArrSplit.length > 1) {
                map.put(strArrSplit[0], strArrSplit[1]);
            } else if (!strArrSplit[0].equals("")) {
                map.put(strArrSplit[0], "");
            }
        }
        return map;
    }

    public static boolean d(String str) {
        return URLUtil.isNetworkUrl(str);
    }
}
