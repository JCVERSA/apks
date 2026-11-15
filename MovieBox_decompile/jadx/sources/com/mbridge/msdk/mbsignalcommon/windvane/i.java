package com.mbridge.msdk.mbsignalcommon.windvane;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class i {

    private static final String[] f35741a = {"wv_hybrid:", "mraid:", "ssp:", "mvb_hybrid:"};

    private static final Pattern f35742b = Pattern.compile("hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    private static final Pattern f35743c = Pattern.compile("mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    private static final Pattern f35744d = Pattern.compile("ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    private static final Pattern f35745e = Pattern.compile("mv://(.+?):(.+?)/(.+?)(\\?(.*?))?");

    private static Map<String, String> f35746f = new HashMap();

    static {
        for (d dVar : d.values()) {
            f35746f.put(dVar.c(), dVar.b());
        }
    }

    public static String a(String str) {
        char[] cArr = {'\'', '\\'};
        StringBuffer stringBuffer = new StringBuffer(1000);
        stringBuffer.setLength(0);
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 255) {
                int i11 = 0;
                while (true) {
                    if (i11 >= 2) {
                        stringBuffer.append(cCharAt);
                        break;
                    }
                    if (cArr[i11] == cCharAt) {
                        stringBuffer.append("\\" + cCharAt);
                        break;
                    }
                    i11++;
                }
            } else {
                stringBuffer.append("\\u");
                String upperCase = Integer.toHexString(cCharAt >>> '\b').toUpperCase();
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                String upperCase2 = Integer.toHexString(cCharAt & 255).toUpperCase();
                if (upperCase2.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase2);
            }
        }
        return new String(stringBuffer);
    }

    public static String b(String str) {
        String str2 = f35746f.get(d(str));
        return str2 == null ? "" : str2;
    }

    public static Pattern c(String str) {
        if ("wv_hybrid:".equals(str)) {
            return f35745e;
        }
        if ("mraid:".equals(str)) {
            return f35743c;
        }
        if ("ssp:".equals(str)) {
            return f35744d;
        }
        if ("mvb_hybrid:".equals(str)) {
            return f35745e;
        }
        return null;
    }

    public static String d(String str) {
        String path;
        int iLastIndexOf;
        return (TextUtils.isEmpty(str) || (path = Uri.parse(str).getPath()) == null || (iLastIndexOf = path.lastIndexOf(".")) == -1) ? "" : path.substring(iLastIndexOf + 1);
    }

    public static boolean e(String str) {
        return b(str).startsWith("image");
    }

    public static boolean f(String str) {
        for (String str2 : f35741a) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
