package com.blankj.utilcode.util;

import android.content.res.Resources;
import java.util.IllegalFormatException;

public abstract class b0 {
    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (charSequence.charAt(i10) != charSequence2.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String c(String str, Object... objArr) {
        if (str == null || objArr == null || objArr.length <= 0) {
            return str;
        }
        try {
            return String.format(str, objArr);
        } catch (IllegalFormatException e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static String d(int i10) {
        return e(i10, null);
    }

    public static String e(int i10, Object... objArr) {
        try {
            return c(Utils.a().getString(i10), objArr);
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
            return String.valueOf(i10);
        }
    }

    public static boolean f(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String g(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length <= 1) {
            return str;
        }
        int i10 = length >> 1;
        char[] charArray = str.toCharArray();
        for (int i11 = 0; i11 < i10; i11++) {
            char c10 = charArray[i11];
            int i12 = (length - i11) - 1;
            charArray[i11] = charArray[i12];
            charArray[i12] = c10;
        }
        return new String(charArray);
    }
}
