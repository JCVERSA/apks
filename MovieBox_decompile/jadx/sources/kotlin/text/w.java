package kotlin.text;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public class w extends v {
    public static String u1(String str, int i10) {
        Intrinsics.h(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(RangesKt.h(i10, str.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static char v1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static Character w1(CharSequence charSequence, int i10) {
        Intrinsics.h(charSequence, "<this>");
        if (i10 < 0 || i10 >= charSequence.length()) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(i10));
    }

    public static char x1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(StringsKt.i0(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static char y1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    public static String z1(String str, int i10) {
        Intrinsics.h(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(0, RangesKt.h(i10, str.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }
}
