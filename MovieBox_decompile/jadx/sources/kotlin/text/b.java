package kotlin.text;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

public class b {
    public static int a(int i10) {
        if (2 <= i10 && i10 < 37) {
            return i10;
        }
        throw new IllegalArgumentException("radix " + i10 + " was not in valid range " + new IntRange(2, 36));
    }

    public static final int b(char c10, int i10) {
        return Character.digit((int) c10, i10);
    }

    public static boolean c(char c10) {
        return Character.isWhitespace(c10) || Character.isSpaceChar(c10);
    }

    public static String d(char c10, Locale locale) {
        Intrinsics.h(locale, "locale");
        String strE = e(c10, locale);
        if (strE.length() <= 1) {
            String strValueOf = String.valueOf(c10);
            Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            return !Intrinsics.c(strE, upperCase) ? strE : String.valueOf(Character.toTitleCase(c10));
        }
        if (c10 == 329) {
            return strE;
        }
        char cCharAt = strE.charAt(0);
        Intrinsics.f(strE, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = strE.substring(1);
        Intrinsics.g(strSubstring, "substring(...)");
        Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }

    public static final String e(char c10, Locale locale) {
        Intrinsics.h(locale, "locale");
        String strValueOf = String.valueOf(c10);
        Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
