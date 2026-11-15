package defpackage;

import java.util.Locale;

public abstract class a1d {
    public static final String a(char c) {
        String strValueOf = String.valueOf(c);
        y45.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = strValueOf.toUpperCase(locale);
        y45.i(upperCase, "toUpperCase(...)");
        if (upperCase.length() <= 1) {
            return String.valueOf(Character.toTitleCase(c));
        }
        if (c == 329) {
            return upperCase;
        }
        char cCharAt = upperCase.charAt(0);
        y45.h(upperCase, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = upperCase.substring(1);
        y45.i(strSubstring, "substring(...)");
        y45.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }
}
