package com.yandex.mobile.ads.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.regex.Pattern;

public final class ek2 {
    public static final int a = 0;

    static {
        Pattern.compile("^NOTE([ \t].*)?$");
    }

    public static long a(String str) throws NumberFormatException {
        int i = f92.a;
        String[] strArrSplit = str.split("\\.", 2);
        long j = 0;
        for (String str2 : strArrSplit[0].split(StringUtils.PROCESS_POSTFIX_DELIMITER, -1)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrSplit.length == 2) {
            j2 += Long.parseLong(strArrSplit[1]);
        }
        return j2 * 1000;
    }
}
