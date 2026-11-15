package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class x {

    private static final Pattern f26762a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    private static final Pattern f26763b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static String a(long j10, long j11) {
        if (j10 == 0 && j11 == -1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bytes=");
        sb2.append(j10);
        sb2.append("-");
        if (j11 != -1) {
            sb2.append((j10 + j11) - 1);
        }
        return sb2.toString();
    }

    public static long b(String str, String str2) {
        long j10;
        if (TextUtils.isEmpty(str)) {
            j10 = -1;
        } else {
            try {
                j10 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                com.google.android.exoplayer2.util.s.c("HttpUtil", "Unexpected Content-Length [" + str + "]");
                j10 = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j10;
        }
        Matcher matcher = f26762a.matcher(str2);
        if (!matcher.matches()) {
            return j10;
        }
        try {
            long j11 = (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) - Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)))) + 1;
            if (j10 < 0) {
                return j11;
            }
            if (j10 == j11) {
                return j10;
            }
            com.google.android.exoplayer2.util.s.i("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + "]");
            return Math.max(j10, j11);
        } catch (NumberFormatException unused2) {
            com.google.android.exoplayer2.util.s.c("HttpUtil", "Unexpected Content-Range [" + str2 + "]");
            return j10;
        }
    }

    public static long c(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f26763b.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        }
        return -1L;
    }
}
