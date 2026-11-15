package kotlin.text;

import defpackage.u15;
import defpackage.y45;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Locale;

public abstract class a {
    public static int a(int i) {
        if (2 <= i && i < 37) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new u15(2, 36));
    }

    public static final int b(char c, int i) {
        return Character.digit((int) c, i);
    }

    public static boolean c(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    public static String d(char c, Locale locale) {
        y45.j(locale, CommonUrlParts.LOCALE);
        String strE = e(c, locale);
        if (strE.length() <= 1) {
            String strValueOf = String.valueOf(c);
            y45.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            y45.i(upperCase, "toUpperCase(...)");
            return !y45.e(strE, upperCase) ? strE : String.valueOf(Character.toTitleCase(c));
        }
        if (c == 329) {
            return strE;
        }
        char cCharAt = strE.charAt(0);
        y45.h(strE, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = strE.substring(1);
        y45.i(strSubstring, "substring(...)");
        y45.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        y45.i(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }

    public static final String e(char c, Locale locale) {
        y45.j(locale, CommonUrlParts.LOCALE);
        String strValueOf = String.valueOf(c);
        y45.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        y45.i(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
