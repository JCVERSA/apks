package defpackage;

import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class k81 {
    public static final a b = new a(null);
    public final int a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(int i, int i2, int i3, int i4) {
            return k81.d((i << 24) | (i2 << 16) | (i3 << 8) | i4);
        }

        public final int b(String str) {
            String str2;
            y45.j(str, "colorString");
            if (str.length() <= 0) {
                throw new IllegalArgumentException("Expected color string, actual string is empty");
            }
            if (str.charAt(0) != '#') {
                throw new IllegalArgumentException(("Unknown color " + str).toString());
            }
            int length = str.length();
            if (length == 4) {
                char cCharAt = str.charAt(1);
                char cCharAt2 = str.charAt(2);
                char cCharAt3 = str.charAt(3);
                str2 = new String(new char[]{'f', 'f', cCharAt, cCharAt, cCharAt2, cCharAt2, cCharAt3, cCharAt3});
            } else if (length == 5) {
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(4);
                str2 = new String(new char[]{cCharAt4, cCharAt4, cCharAt5, cCharAt5, cCharAt6, cCharAt6, cCharAt7, cCharAt7});
            } else if (length == 7) {
                StringBuilder sb = new StringBuilder();
                sb.append("ff");
                String strSubstring = str.substring(1);
                y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                sb.append(strSubstring);
                str2 = sb.toString();
            } else {
                if (length != 9) {
                    throw new IllegalArgumentException("Unknown color " + str);
                }
                str2 = str.substring(1);
                y45.i(str2, "this as java.lang.String).substring(startIndex)");
            }
            return k81.d((int) Long.parseLong(str2, kotlin.text.a.a(16)));
        }

        public a() {
        }
    }

    public k81(int i) {
        this.a = i;
    }

    public static final int a(int i) {
        return i >>> 24;
    }

    public static final int b(int i) {
        return i & 255;
    }

    public static final k81 c(int i) {
        return new k81(i);
    }

    public static int d(int i) {
        return i;
    }

    public static boolean e(int i, Object obj) {
        return (obj instanceof k81) && i == ((k81) obj).k();
    }

    public static final boolean f(int i, int i2) {
        return i == i2;
    }

    public static final int g(int i) {
        return (i >> 8) & 255;
    }

    public static int h(int i) {
        return Integer.hashCode(i);
    }

    public static final int i(int i) {
        return (i >> 16) & 255;
    }

    public static String j(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append('#');
        String hexString = Integer.toHexString(i);
        y45.i(hexString, "toHexString(value)");
        String upperCase = j1a.x0(hexString, 8, '0').toUpperCase(Locale.ROOT);
        y45.i(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        sb.append(upperCase);
        return sb.toString();
    }

    public boolean equals(Object obj) {
        return e(this.a, obj);
    }

    public int hashCode() {
        return h(this.a);
    }

    public final int k() {
        return this.a;
    }

    public String toString() {
        return j(this.a);
    }
}
