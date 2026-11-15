package defpackage;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Comparator;
import java.util.Locale;

public abstract class g1a extends f1a {
    public static boolean A(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return z ? j1a.Y(charSequence, charSequence2) : z(charSequence, charSequence2);
    }

    public static String B(byte[] bArr) {
        y45.j(bArr, "<this>");
        return new String(bArr, qv0.b);
    }

    public static boolean C(String str, String str2, boolean z) {
        y45.j(str, "<this>");
        y45.j(str2, "suffix");
        return !z ? str.endsWith(str2) : H(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static boolean D(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return C(str, str2, z);
    }

    public static boolean E(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static boolean F(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return E(str, str2, z);
    }

    public static Comparator G(hz9 hz9Var) {
        y45.j(hz9Var, "<this>");
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        y45.i(comparator, "CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    public static boolean H(String str, int i, String str2, int i2, int i3, boolean z) {
        y45.j(str, "<this>");
        y45.j(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static boolean I(String str, int i, String str2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return H(str, i, str2, i2, i3, z);
    }

    public static String J(CharSequence charSequence, int i) {
        y45.j(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
        }
        if (i == 0) {
            return "";
        }
        int i2 = 1;
        if (i == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i];
            for (int i3 = 0; i3 < i; i3++) {
                cArr[i3] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i);
        if (1 <= i) {
            while (true) {
                sb.append(charSequence);
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        String string = sb.toString();
        y45.g(string);
        return string;
    }

    public static final String K(String str, char c, char c2, boolean z) {
        y45.j(str, "<this>");
        if (!z) {
            String strReplace = str.replace(c, c2);
            y45.i(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (ov0.f(cCharAt, c, z)) {
                cCharAt = c2;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String L(String str, String str2, String str3, boolean z) {
        y45.j(str, "<this>");
        y45.j(str2, "oldValue");
        y45.j(str3, "newValue");
        int i = 0;
        int iI0 = j1a.i0(str, str2, 0, z);
        if (iI0 < 0) {
            return str;
        }
        int length = str2.length();
        int iD = wn8.d(length, 1);
        int length2 = (str.length() - length) + str3.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i, iI0);
            sb.append(str3);
            i = iI0 + length;
            if (iI0 >= str.length()) {
                break;
            }
            iI0 = j1a.i0(str, str2, iI0 + iD, z);
        } while (iI0 > 0);
        sb.append((CharSequence) str, i, str.length());
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public static String M(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return K(str, c, c2, z);
    }

    public static String N(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return L(str, str2, str3, z);
    }

    public static boolean O(String str, String str2, int i, boolean z) {
        y45.j(str, "<this>");
        y45.j(str2, "prefix");
        return !z ? str.startsWith(str2, i) : H(str, i, str2, 0, str2.length(), z);
    }

    public static boolean P(String str, String str2, boolean z) {
        y45.j(str, "<this>");
        y45.j(str2, "prefix");
        return !z ? str.startsWith(str2) : H(str, 0, str2, 0, str2.length(), z);
    }

    public static boolean Q(String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return O(str, str2, i, z);
    }

    public static boolean R(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return P(str, str2, z);
    }

    public static String v(String str) {
        y45.j(str, "<this>");
        Locale locale = Locale.getDefault();
        y45.i(locale, "getDefault(...)");
        return w(str, locale);
    }

    public static final String w(String str, Locale locale) {
        y45.j(str, "<this>");
        y45.j(locale, CommonUrlParts.LOCALE);
        if (str.length() <= 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb.append(titleCase);
        } else {
            String strSubstring = str.substring(0, 1);
            y45.i(strSubstring, "substring(...)");
            y45.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strSubstring.toUpperCase(locale);
            y45.i(upperCase, "toUpperCase(...)");
            sb.append(upperCase);
        }
        String strSubstring2 = str.substring(1);
        y45.i(strSubstring2, "substring(...)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    public static String x(char[] cArr) {
        y45.j(cArr, "<this>");
        return new String(cArr);
    }

    public static String y(char[] cArr, int i, int i2) {
        y45.j(cArr, "<this>");
        g3.Companion.a(i, i2, cArr.length);
        return new String(cArr, i, i2 - i);
    }

    public static final boolean z(CharSequence charSequence, CharSequence charSequence2) {
        return (!(charSequence instanceof String) || charSequence2 == null) ? j1a.Z(charSequence, charSequence2) : ((String) charSequence).contentEquals(charSequence2);
    }
}
