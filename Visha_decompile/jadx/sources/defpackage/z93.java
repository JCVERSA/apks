package defpackage;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public abstract class z93 {
    public static String a(String str) {
        return b(str, "UTF-8");
    }

    public static String b(String str, String str2) {
        if (str == null || str.length() == 0) {
            return "";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
