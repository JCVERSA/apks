package com.hunantv.media.utils;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class StringUtil {
    public static String formatArrayString(String[] strArr) {
        String str = "";
        if (strArr != null && strArr.length > 0) {
            for (String str2 : strArr) {
                str = str + str2 + StringUtils.COMMA;
            }
        }
        return str;
    }

    public static boolean isSpace(String str) {
        return str == null || "".equals(str.trim());
    }
}
