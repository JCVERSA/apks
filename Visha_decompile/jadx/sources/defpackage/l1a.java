package defpackage;

import java.util.NoSuchElementException;

public abstract class l1a extends k1a {
    public static String n1(String str, int i) {
        y45.j(str, "<this>");
        if (i >= 0) {
            String strSubstring = str.substring(wn8.g(i, str.length()));
            y45.i(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
    }

    public static char o1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static Character p1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(0));
    }

    public static char q1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(j1a.g0(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static Character r1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(charSequence.length() - 1));
    }

    public static CharSequence s1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        return new StringBuilder(charSequence).reverse();
    }

    public static char t1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    public static String u1(String str, int i) {
        y45.j(str, "<this>");
        if (i >= 0) {
            String strSubstring = str.substring(0, wn8.g(i, str.length()));
            y45.i(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
    }
}
