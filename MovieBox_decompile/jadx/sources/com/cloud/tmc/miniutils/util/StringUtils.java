package com.cloud.tmc.miniutils.util;

import android.content.res.Resources;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;

public final class StringUtils {
    private StringUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
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

    public static boolean equalsIgnoreCase(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String format(@Nullable String str, Object... objArr) {
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

    public static String getString(int i10) {
        return getString(i10, null);
    }

    public static String[] getStringArray(int i10) {
        try {
            return Utils.getApp().getResources().getStringArray(i10);
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
            return new String[]{String.valueOf(i10)};
        }
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isSpace(String str) {
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

    public static boolean isTrimEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String lowerFirstLetter(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        return String.valueOf((char) (str.charAt(0) + ' ')) + str.substring(1);
    }

    public static String null2Length0(String str) {
        return str == null ? "" : str;
    }

    public static String reverse(String str) {
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

    public static String toDBC(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = charArray[i10];
            if (c10 == 12288) {
                charArray[i10] = ' ';
            } else if (65281 <= c10 && c10 <= 65374) {
                charArray[i10] = (char) (c10 - 65248);
            }
        }
        return new String(charArray);
    }

    public static String toSBC(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = charArray[i10];
            if (c10 == ' ') {
                charArray[i10] = 12288;
            } else if ('!' <= c10 && c10 <= '~') {
                charArray[i10] = (char) (c10 + 65248);
            }
        }
        return new String(charArray);
    }

    public static String upperFirstLetter(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return ((char) (str.charAt(0) - ' ')) + str.substring(1);
    }

    public static String getString(int i10, Object... objArr) {
        try {
            return format(Utils.getApp().getString(i10), objArr);
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
            return String.valueOf(i10);
        }
    }
}
