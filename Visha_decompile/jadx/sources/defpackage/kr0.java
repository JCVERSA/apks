package defpackage;

import java.util.Iterator;
import java.util.Locale;

public abstract class kr0 {
    public static final String a(String str) {
        char cCharAt;
        y45.j(str, "<this>");
        if (str.length() == 0 || 'a' > (cCharAt = str.charAt(0)) || cCharAt >= '{') {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = str.substring(1);
        y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return upperCase + strSubstring;
    }

    public static final String b(String str) {
        char cCharAt;
        y45.j(str, "<this>");
        if (str.length() == 0 || 'A' > (cCharAt = str.charAt(0)) || cCharAt >= '[') {
            return str;
        }
        char lowerCase = Character.toLowerCase(cCharAt);
        String strSubstring = str.substring(1);
        y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return lowerCase + strSubstring;
    }

    public static final String c(String str, boolean z) {
        Object next;
        y45.j(str, "<this>");
        if (str.length() == 0 || !d(str, 0, z)) {
            return str;
        }
        if (str.length() == 1 || !d(str, 1, z)) {
            if (z) {
                return b(str);
            }
            if (str.length() <= 0) {
                return str;
            }
            char lowerCase = Character.toLowerCase(str.charAt(0));
            String strSubstring = str.substring(1);
            y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            return lowerCase + strSubstring;
        }
        Iterator it = j1a.f0(str).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (d(str, ((Number) next).intValue(), z));
        Integer num = (Integer) next;
        if (num == null) {
            return e(str, z);
        }
        int iIntValue = num.intValue() - 1;
        StringBuilder sb = new StringBuilder();
        String strSubstring2 = str.substring(0, iIntValue);
        y45.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(e(strSubstring2, z));
        String strSubstring3 = str.substring(iIntValue);
        y45.i(strSubstring3, "this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring3);
        return sb.toString();
    }

    public static final boolean d(String str, int i, boolean z) {
        char cCharAt = str.charAt(i);
        if (z) {
            return 'A' <= cCharAt && cCharAt < '[';
        }
        return Character.isUpperCase(cCharAt);
    }

    public static final String e(String str, boolean z) {
        if (z) {
            return f(str);
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        y45.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public static final String f(String str) {
        y45.j(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ('A' <= cCharAt && cCharAt < '[') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        y45.i(string, "builder.toString()");
        return string;
    }
}
