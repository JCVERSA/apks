package com.blankj.utilcode.util;

import android.support.v4.media.session.PlaybackStateCompat;

public abstract class i {

    private static final char[] f19471a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static final char[] f19472b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(long j10) {
        return b(j10, 3);
    }

    public static String b(long j10, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("precision shouldn't be less than zero!");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteSize shouldn't be less than zero!");
        }
        if (j10 < 1024) {
            return String.format("%." + i10 + "fB", Double.valueOf(j10));
        }
        if (j10 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i10 + "fKB", Double.valueOf(j10 / 1024.0d));
        }
        if (j10 < 1073741824) {
            return String.format("%." + i10 + "fMB", Double.valueOf(j10 / 1048576.0d));
        }
        return String.format("%." + i10 + "fGB", Double.valueOf(j10 / 1.073741824E9d));
    }

    public static String c(byte[] bArr) {
        return d(bArr, true);
    }

    public static String d(byte[] bArr, boolean z10) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = z10 ? f19471a : f19472b;
        int length = bArr.length;
        if (length <= 0) {
            return "";
        }
        char[] cArr2 = new char[length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            cArr2[i10] = cArr[(b10 >> 4) & 15];
            i10 += 2;
            cArr2[i11] = cArr[b10 & 15];
        }
        return new String(cArr2);
    }

    public static int e(float f10) {
        return e0.d(f10);
    }

    public static long f(long j10, int i10) {
        if (j10 < 0) {
            return -1L;
        }
        return j10 * ((long) i10);
    }
}
