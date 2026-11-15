package org.apache.tools.ant.util;

import android.support.v4.media.session.PlaybackStateCompat;

public abstract class p {

    public static final String f68442a = System.getProperty("line.separator");

    public static long a(String str) {
        long j10;
        char cCharAt = str.charAt(0);
        int i10 = 1;
        long j11 = 1;
        if (cCharAt == '+') {
            str = str.substring(1);
        } else if (cCharAt == '-') {
            str = str.substring(1);
            j11 = -1;
        }
        char cCharAt2 = str.charAt(str.length() - 1);
        if (!Character.isDigit(cCharAt2)) {
            if (cCharAt2 == 'G') {
                j10 = 1073741824;
            } else if (cCharAt2 == 'K') {
                j10 = 1024;
            } else if (cCharAt2 == 'M') {
                j10 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            } else if (cCharAt2 != 'P') {
                if (cCharAt2 != 'T') {
                    i10 = 0;
                } else {
                    j10 = 1099511627776L;
                }
                str = str.substring(0, str.length() - i10);
            } else {
                j10 = 1125899906842624L;
            }
            j11 *= j10;
            str = str.substring(0, str.length() - i10);
        }
        return j11 * Long.parseLong(str);
    }
}
