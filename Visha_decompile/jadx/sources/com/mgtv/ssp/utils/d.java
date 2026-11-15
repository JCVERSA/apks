package com.mgtv.ssp.utils;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;

public final class d {
    private static int a(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        return ((i ^ i2) + (iArr[(i4 & 3) ^ i5] ^ i3)) ^ (((i3 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i3 << 4)));
    }

    public static final byte[] a(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : a(a(a(bArr, false), a(a(bArr2), false)), true);
    }

    public static final byte[] a(byte[] bArr, String str) {
        try {
            return a(bArr, str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static final String a(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            byte[] bArrA = a(a.a(str), str2);
            if (bArrA == null) {
                return "";
            }
            return new String(bArrA, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    private static int[] a(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i = length - 1;
        if (i < 1) {
            return iArr;
        }
        int iA = iArr[0];
        for (int i2 = ((52 / length) + 6) * (-1640531527); i2 != 0; i2 -= -1640531527) {
            int i3 = (i2 >>> 2) & 3;
            int iA2 = iA;
            int i4 = i;
            while (i4 > 0) {
                iA2 = iArr[i4] - a(i2, iA2, iArr[i4 - 1], i4, i3, iArr2);
                iArr[i4] = iA2;
                i4--;
            }
            iA = iArr[0] - a(i2, iA2, iArr[i], i4, i3, iArr2);
            iArr[0] = iA;
        }
        return iArr;
    }

    private static byte[] a(byte[] bArr) {
        if (bArr.length == 16) {
            return bArr;
        }
        byte[] bArr2 = new byte[16];
        if (bArr.length < 16) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, 16);
        }
        return bArr2;
    }

    private static int[] a(byte[] bArr, boolean z) {
        int[] iArr;
        int length = (bArr.length & 3) == 0 ? bArr.length >>> 2 : (bArr.length >>> 2) + 1;
        if (z) {
            iArr = new int[length + 1];
            iArr[length] = bArr.length;
        } else {
            iArr = new int[length];
        }
        int length2 = bArr.length;
        for (int i = 0; i < length2; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        return iArr;
    }

    private static byte[] a(int[] iArr, boolean z) {
        int length = iArr.length << 2;
        if (z) {
            int i = iArr[iArr.length - 1];
            int i2 = length - 4;
            if (i < length - 7 || i > i2) {
                return null;
            }
            length = i;
        }
        byte[] bArr = new byte[length];
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = (byte) (iArr[i3 >>> 2] >>> ((i3 & 3) << 3));
        }
        return bArr;
    }
}
