package defpackage;

import java.io.UnsupportedEncodingException;

public abstract class n4d {
    public static int a(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        return ((i ^ i2) + (iArr[(i4 & 3) ^ i5] ^ i3)) ^ (((i3 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i3 << 4)));
    }

    public static final String b(String str, byte[] bArr) {
        try {
            byte[] bArrK = k(ihd.b(str), bArr);
            if (bArrK == null) {
                return null;
            }
            return new String(bArrK, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static final byte[] c(String str, String str2) {
        try {
            return f(str.getBytes("UTF-8"), str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static byte[] d(byte[] bArr) {
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

    public static final byte[] e(byte[] bArr, String str) {
        try {
            return k(bArr, str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static final byte[] f(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : g(i(h(bArr, true), h(d(bArr2), false)), false);
    }

    public static byte[] g(int[] iArr, boolean z) {
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

    public static int[] h(byte[] bArr, boolean z) {
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

    public static int[] i(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i = length - 1;
        if (i < 1) {
            return iArr;
        }
        int i2 = (52 / length) + 6;
        int iA = iArr[i];
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 <= 0) {
                return iArr;
            }
            i3 -= 1640531527;
            int i5 = (i3 >>> 2) & 3;
            int iA2 = iA;
            int i6 = 0;
            while (i6 < i) {
                int i7 = i6 + 1;
                iA2 = iArr[i6] + a(i3, iArr[i7], iA2, i6, i5, iArr2);
                iArr[i6] = iA2;
                i6 = i7;
            }
            iA = a(i3, iArr[0], iA2, i6, i5, iArr2) + iArr[i];
            iArr[i] = iA;
            i2 = i4;
        }
    }

    public static final String j(String str, String str2) {
        byte[] bArrC = c(str, str2);
        if (bArrC == null) {
            return null;
        }
        return ihd.a(bArrC);
    }

    public static final byte[] k(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : g(l(h(bArr, false), h(d(bArr2), false)), true);
    }

    public static int[] l(int[] iArr, int[] iArr2) {
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

    public static final String m(String str, String str2) {
        try {
            byte[] bArrE = e(ihd.b(str), str2);
            if (bArrE == null) {
                return null;
            }
            return new String(bArrE, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }
}
