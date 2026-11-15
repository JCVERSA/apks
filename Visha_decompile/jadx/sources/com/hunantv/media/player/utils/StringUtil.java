package com.hunantv.media.player.utils;

public class StringUtil {
    public static boolean contains(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return false;
        }
        return str.contains(str2);
    }

    private static String getPadding(CharSequence charSequence, int i) {
        if (charSequence.length() < i) {
            return multiply(charSequence, Integer.valueOf((i / charSequence.length()) + 1)).substring(0, i);
        }
        return "" + ((Object) charSequence.subSequence(0, i));
    }

    public static boolean isEmpty(String str) {
        return str == null || "".equals(str.trim());
    }

    public static boolean isHtml(String str) {
        if (isEmpty(str)) {
            return false;
        }
        return str.contains("<!DOCTYPE html>") || str.contains("<html>");
    }

    public static String multiply(CharSequence charSequence, Number number) {
        int iIntValue = number.intValue();
        if (iIntValue == 0) {
            return "";
        }
        if (iIntValue < 0) {
            throw new IllegalArgumentException("multiply() should be called with a number of 0 or greater not: " + iIntValue);
        }
        StringBuilder sb = new StringBuilder(charSequence);
        for (int i = 1; i < iIntValue; i++) {
            sb.append(charSequence);
        }
        return sb.toString();
    }

    public static String padRight(CharSequence charSequence, Number number) {
        return padRight(charSequence, number, " ");
    }

    public static String parseValue(String str, String str2) {
        if (isEmpty(str)) {
            return str;
        }
        try {
            String[] strArrSplit = str.split(str2);
            if (strArrSplit.length == 1) {
                return "";
            }
            if (strArrSplit.length >= 2) {
                return strArrSplit[1];
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String removeSpace(String str) {
        if (str == null) {
            return null;
        }
        return str.replace(" ", "");
    }

    public static String safeToLowerCase(String str) {
        return isEmpty(str) ? str : str.toLowerCase();
    }

    public static String trim(String str) {
        if (str == null) {
            return "";
        }
        try {
            return str.trim();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String padRight(CharSequence charSequence, Number number, CharSequence charSequence2) {
        int iIntValue = number.intValue();
        if (iIntValue <= charSequence.length()) {
            return charSequence.toString();
        }
        return ((Object) charSequence) + getPadding(charSequence2.toString(), iIntValue - charSequence.length());
    }
}
