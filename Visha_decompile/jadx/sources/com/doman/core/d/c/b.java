package com.doman.core.d.c;

import java.io.UnsupportedEncodingException;

public final class b {
    public static String a = "Y29tLm1ndHYudWkucGxheWVyLlZvZFBsYXllclBhZ2VBY3Rpdml0eQ==";

    private static int a(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        return ((i ^ i2) + (iArr[(i4 & 3) ^ i5] ^ i3)) ^ (((i3 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i3 << 4)));
    }

    public static final String b(String str, String str2) {
        try {
            byte[] bArrA = a(a.a(str), str2);
            if (bArrA == null) {
                return null;
            }
            return new String(bArrA, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private static byte[] c(String str, String str2) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bytes2 = str2.getBytes("UTF-8");
            if (bytes.length == 0) {
                return bytes;
            }
            int[] iArrA = a(bytes, true);
            int[] iArrA2 = a(a(bytes2), false);
            int length = iArrA.length;
            int i = length - 1;
            if (i > 0) {
                int i2 = (52 / length) + 6;
                int iA = iArrA[i];
                int i3 = 0;
                while (true) {
                    int i4 = i2 - 1;
                    if (i2 <= 0) {
                        break;
                    }
                    int i5 = i3 - 1640531527;
                    int i6 = (i5 >>> 2) & 3;
                    int i7 = 0;
                    int iA2 = iA;
                    while (i7 < i) {
                        int i8 = i7 + 1;
                        iA2 = iArrA[i7] + a(i5, iArrA[i8], iA2, i7, i6, iArrA2);
                        iArrA[i7] = iA2;
                        i7 = i8;
                    }
                    iA = a(i5, iArrA[0], iA2, i7, i6, iArrA2) + iArrA[i];
                    iArrA[i] = iA;
                    i2 = i4;
                    i3 = i5;
                }
            }
            return a(iArrA, false);
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static final String a(String str, String str2) {
        byte[] bArrC = c(str, str2);
        if (bArrC == null) {
            return null;
        }
        return a.a(bArrC);
    }

    private static byte[] a(byte[] bArr) {
        if (bArr.length == 16) {
            return bArr;
        }
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length < 16 ? bArr.length : 16);
        return bArr2;
    }

    private static byte[] a(byte[] bArr, String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (bArr.length == 0) {
                return bArr;
            }
            int[] iArrA = a(bArr, false);
            int[] iArrA2 = a(a(bytes), false);
            int length = iArrA.length;
            int i = length - 1;
            if (i > 0) {
                int i2 = (52 / length) + 6;
                int iA = iArrA[0];
                for (int i3 = i2 * (-1640531527); i3 != 0; i3 -= -1640531527) {
                    int i4 = (i3 >>> 2) & 3;
                    int iA2 = iA;
                    int i5 = i;
                    while (i5 > 0) {
                        iA2 = iArrA[i5] - a(i3, iA2, iArrA[i5 - 1], i5, i4, iArrA2);
                        iArrA[i5] = iA2;
                        i5--;
                    }
                    iA = iArrA[0] - a(i3, iA2, iArrA[i], i5, i4, iArrA2);
                    iArrA[0] = iA;
                }
            }
            return a(iArrA, true);
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
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
}
