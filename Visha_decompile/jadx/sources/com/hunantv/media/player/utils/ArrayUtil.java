package com.hunantv.media.player.utils;

public class ArrayUtil {
    public static boolean inArrayIgnoreCase(String[] strArr, String str) {
        try {
            if (!StringUtil.isEmpty(str) && strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str.toUpperCase().contains(str2.toUpperCase())) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
