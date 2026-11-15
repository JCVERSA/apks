package kotlin.text;

import java.util.Comparator;
import java.util.Locale;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;

public class s extends r {
    public static final String A(String str, Locale locale) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(locale, "locale");
        if (str.length() <= 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb2.append(titleCase);
        } else {
            String strSubstring = str.substring(0, 1);
            Intrinsics.g(strSubstring, "substring(...)");
            Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strSubstring.toUpperCase(locale);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            sb2.append(upperCase);
        }
        String strSubstring2 = str.substring(1);
        Intrinsics.g(strSubstring2, "substring(...)");
        sb2.append(strSubstring2);
        return sb2.toString();
    }

    public static String B(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        return new String(cArr);
    }

    public static String C(char[] cArr, int i10, int i11) {
        Intrinsics.h(cArr, "<this>");
        AbstractList.INSTANCE.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    public static String D(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static byte[] E(String str) {
        Intrinsics.h(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        return bytes;
    }

    public static boolean F(String str, String suffix, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(suffix, "suffix");
        return !z10 ? str.endsWith(suffix) : StringsKt.K(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static boolean G(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.F(str, str2, z10);
    }

    public static boolean H(String str, String str2, boolean z10) {
        if (str == null) {
            return str2 == null;
        }
        return !z10 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static boolean I(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.H(str, str2, z10);
    }

    public static Comparator J(StringCompanionObject stringCompanionObject) {
        Intrinsics.h(stringCompanionObject, "<this>");
        Comparator CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.g(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static boolean K(String str, int i10, String other, int i11, int i12, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(other, "other");
        return !z10 ? str.regionMatches(i10, other, i11, i12) : str.regionMatches(z10, i10, other, i11, i12);
    }

    public static boolean L(String str, int i10, String str2, int i11, int i12, boolean z10, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z10 = false;
        }
        return StringsKt.K(str, i10, str2, i11, i12, z10);
    }

    public static String M(CharSequence charSequence, int i10) {
        Intrinsics.h(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
        }
        if (i10 == 0) {
            return "";
        }
        int i11 = 1;
        if (i10 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                cArr[i12] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb2 = new StringBuilder(charSequence.length() * i10);
        if (1 <= i10) {
            while (true) {
                sb2.append(charSequence);
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.e(string);
        return string;
    }

    public static final String N(String str, char c10, char c11, boolean z10) {
        Intrinsics.h(str, "<this>");
        if (!z10) {
            String strReplace = str.replace(c10, c11);
            Intrinsics.g(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (c.g(cCharAt, c10, z10)) {
                cCharAt = c11;
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    public static String O(String str, String oldValue, String newValue, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(oldValue, "oldValue");
        Intrinsics.h(newValue, "newValue");
        int i10 = 0;
        int iK0 = StringsKt.k0(str, oldValue, 0, z10);
        if (iK0 < 0) {
            return str;
        }
        int length = oldValue.length();
        int iE = RangesKt.e(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        do {
            sb2.append((CharSequence) str, i10, iK0);
            sb2.append(newValue);
            i10 = iK0 + length;
            if (iK0 >= str.length()) {
                break;
            }
            iK0 = StringsKt.k0(str, oldValue, iK0 + iE, z10);
        } while (iK0 > 0);
        sb2.append((CharSequence) str, i10, str.length());
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static String P(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return N(str, c10, c11, z10);
    }

    public static String Q(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.O(str, str2, str3, z10);
    }

    public static String R(String str, String oldValue, String newValue, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(oldValue, "oldValue");
        Intrinsics.h(newValue, "newValue");
        int iO0 = StringsKt.o0(str, oldValue, 0, z10, 2, null);
        return iO0 < 0 ? str : StringsKt.M0(str, iO0, oldValue.length() + iO0, newValue).toString();
    }

    public static String S(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.R(str, str2, str3, z10);
    }

    public static boolean T(String str, String prefix, int i10, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        return !z10 ? str.startsWith(prefix, i10) : StringsKt.K(str, i10, prefix, 0, prefix.length(), z10);
    }

    public static boolean U(String str, String prefix, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        return !z10 ? str.startsWith(prefix) : StringsKt.K(str, 0, prefix, 0, prefix.length(), z10);
    }

    public static boolean V(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.T(str, str2, i10, z10);
    }

    public static boolean W(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.U(str, str2, z10);
    }

    public static String z(String str) {
        Intrinsics.h(str, "<this>");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        return A(str, locale);
    }
}
