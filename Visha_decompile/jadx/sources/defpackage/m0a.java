package defpackage;

import com.avery.subtitle.widget.SubtitleTextView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import java.util.regex.Pattern;

public abstract class m0a {
    public static final String[] a = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", SubtitleTextView.PLACEHOLDER_TEXT};
    public static final Pattern b = Pattern.compile("^/((\\.{1,2}/)+)");
    public static final Pattern c = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");
    public static final ThreadLocal d = new a();

    public class a extends ThreadLocal {
        @Override
        public Stack initialValue() {
            return new Stack();
        }
    }

    public static class b {
        public final String b;
        public StringBuilder a = m0a.b();
        public boolean c = true;

        public b(String str) {
            this.b = str;
        }

        public b a(Object obj) {
            dnb.i(this.a);
            if (!this.c) {
                this.a.append(this.b);
            }
            this.a.append(obj);
            this.c = false;
            return this;
        }

        public String b() {
            String strM = m0a.m(this.a);
            this.a = null;
            return strM;
        }
    }

    public static void a(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (e(iCodePointAt)) {
                if ((!z || z2) && !z3) {
                    sb.append(' ');
                    z3 = true;
                }
            } else if (!g(iCodePointAt)) {
                sb.appendCodePoint(iCodePointAt);
                z3 = false;
                z2 = true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public static StringBuilder b() {
        Stack stack = (Stack) d.get();
        return stack.empty() ? new StringBuilder(8192) : (StringBuilder) stack.pop();
    }

    public static boolean c(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean e(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13 || i == 160;
    }

    public static boolean f(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!i(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean g(int i) {
        return i == 8203 || i == 173;
    }

    public static boolean h(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean i(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String j(Collection collection, String str) {
        return k(collection.iterator(), str);
    }

    public static String k(Iterator it, String str) {
        if (!it.hasNext()) {
            return "";
        }
        String string = it.next().toString();
        if (!it.hasNext()) {
            return string;
        }
        b bVar = new b(str);
        bVar.a(string);
        while (it.hasNext()) {
            bVar.a(it.next());
        }
        return bVar.b();
    }

    public static String l(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        String[] strArr = a;
        if (i < strArr.length) {
            return strArr[i];
        }
        int iMin = Math.min(i, 30);
        char[] cArr = new char[iMin];
        for (int i2 = 0; i2 < iMin; i2++) {
            cArr[i2] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static String m(StringBuilder sb) {
        dnb.i(sb);
        String string = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        Stack stack = (Stack) d.get();
        stack.push(sb);
        while (stack.size() > 8) {
            stack.pop();
        }
        return string;
    }

    public static String n(String str, String str2) {
        try {
            try {
                return o(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return c.matcher(str2).find() ? str2 : "";
        }
    }

    public static URL o(URL url, String str) {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        URL url2 = new URL(url, str);
        String strReplaceFirst = b.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            strReplaceFirst = strReplaceFirst + "#" + url2.getRef();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), strReplaceFirst);
    }
}
