package org.jsoup.helper;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class c {

    static final String[] f68561a = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    private static final ThreadLocal f68562b = new a();

    class a extends ThreadLocal {
        a() {
        }

        @Override
        public StringBuilder initialValue() {
            return new StringBuilder(8192);
        }
    }

    public static void a(StringBuilder sb2, String str, boolean z10) {
        int length = str.length();
        int iCharCount = 0;
        boolean z11 = false;
        boolean z12 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (d(iCodePointAt)) {
                if ((!z10 || z11) && !z12) {
                    sb2.append(' ');
                    z12 = true;
                }
            } else if (!f(iCodePointAt)) {
                sb2.appendCodePoint(iCodePointAt);
                z12 = false;
                z11 = true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public static boolean b(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean d(int i10) {
        return i10 == 32 || i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 160;
    }

    public static boolean e(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                if (!h(str.codePointAt(i10))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean f(int i10) {
        return Character.getType(i10) == 16 && (i10 == 8203 || i10 == 8204 || i10 == 8205 || i10 == 173);
    }

    public static boolean g(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isDigit(str.codePointAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(int i10) {
        return i10 == 32 || i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13;
    }

    public static String i(Collection collection, String str) {
        return j(collection.iterator(), str);
    }

    public static String j(Iterator it, String str) {
        if (!it.hasNext()) {
            return "";
        }
        String string = it.next().toString();
        if (!it.hasNext()) {
            return string;
        }
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(string);
        while (it.hasNext()) {
            sb2.append(str);
            sb2.append(it.next());
        }
        return sb2.toString();
    }

    public static String k(String str) {
        StringBuilder sbO = o();
        a(sbO, str, false);
        return sbO.toString();
    }

    public static String l(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        String[] strArr = f68561a;
        if (i10 < strArr.length) {
            return strArr[i10];
        }
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static String m(String str, String str2) {
        try {
            try {
                return n(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }

    public static URL n(URL url, String str) {
        if (str.startsWith(UrlUtils.QUESTION_MARK)) {
            str = url.getPath() + str;
        }
        if (str.indexOf(46) == 0 && url.getFile().indexOf(47) != 0) {
            url = new URL(url.getProtocol(), url.getHost(), url.getPort(), "/" + url.getFile());
        }
        return new URL(url, str);
    }

    public static StringBuilder o() {
        ThreadLocal threadLocal = f68562b;
        StringBuilder sb2 = (StringBuilder) threadLocal.get();
        if (sb2.length() <= 8192) {
            sb2.delete(0, sb2.length());
            return sb2;
        }
        StringBuilder sb3 = new StringBuilder(8192);
        threadLocal.set(sb3);
        return sb3;
    }
}
