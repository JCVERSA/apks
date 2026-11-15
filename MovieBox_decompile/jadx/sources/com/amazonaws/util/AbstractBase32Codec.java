package com.amazonaws.util;

abstract class AbstractBase32Codec {

    private final byte[] f18367a;

    protected AbstractBase32Codec(byte[] bArr) {
        this.f18367a = bArr;
    }

    private final void b(int i10, byte[] bArr, int i11, byte[] bArr2, int i12) {
        int i13 = i12 + 1;
        int iJ = j(bArr[i11]) << 3;
        int i14 = i11 + 2;
        int iJ2 = j(bArr[i11 + 1]);
        bArr2[i12] = (byte) (iJ | ((iJ2 >>> 2) & 7));
        if (i10 == 1) {
            CodecUtils.sanityCheckLastPos(iJ2, 3);
            return;
        }
        int i15 = i12 + 2;
        int iJ3 = ((iJ2 & 3) << 6) | (j(bArr[i14]) << 1);
        int i16 = i11 + 4;
        int iJ4 = j(bArr[i11 + 3]);
        bArr2[i13] = (byte) (iJ3 | ((iJ4 >>> 4) & 1));
        if (i10 == 2) {
            CodecUtils.sanityCheckLastPos(iJ4, 15);
            return;
        }
        int i17 = i12 + 3;
        int i18 = i11 + 5;
        int iJ5 = j(bArr[i16]);
        bArr2[i15] = (byte) ((15 & (iJ5 >>> 1)) | ((iJ4 & 15) << 4));
        if (i10 == 3) {
            CodecUtils.sanityCheckLastPos(iJ5, 1);
            return;
        }
        int iJ6 = ((iJ5 & 1) << 7) | (j(bArr[i18]) << 2);
        int iJ7 = j(bArr[i11 + 6]);
        bArr2[i17] = (byte) (iJ6 | ((iJ7 >>> 3) & 3));
        CodecUtils.sanityCheckLastPos(iJ7, 7);
    }

    private final void c(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int iJ = j(bArr[i10]) << 3;
        int iJ2 = j(bArr[i10 + 1]);
        bArr2[i11] = (byte) (iJ | ((iJ2 >>> 2) & 7));
        int iJ3 = ((iJ2 & 3) << 6) | (j(bArr[i10 + 2]) << 1);
        int iJ4 = j(bArr[i10 + 3]);
        bArr2[i11 + 1] = (byte) (iJ3 | ((iJ4 >>> 4) & 1));
        int iJ5 = j(bArr[i10 + 4]);
        bArr2[i11 + 2] = (byte) (((iJ4 & 15) << 4) | ((iJ5 >>> 1) & 15));
        int iJ6 = ((iJ5 & 1) << 7) | (j(bArr[i10 + 5]) << 2);
        int iJ7 = j(bArr[i10 + 6]);
        bArr2[i11 + 3] = (byte) (iJ6 | ((iJ7 >>> 3) & 3));
        bArr2[i11 + 4] = (byte) (j(bArr[i10 + 7]) | ((iJ7 & 7) << 5));
    }

    private final void e(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = i11 + 1;
        byte[] bArr3 = this.f18367a;
        byte b10 = bArr[i10];
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        int i13 = i11 + 2;
        bArr2[i12] = bArr3[(b10 & 7) << 2];
        int i14 = 0;
        while (i14 < 6) {
            bArr2[i13] = 61;
            i14++;
            i13++;
        }
    }

    private final void f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = this.f18367a;
        int i12 = i10 + 1;
        byte b10 = bArr[i10];
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        byte b11 = bArr[i12];
        bArr2[i11 + 1] = bArr3[((b10 & 7) << 2) | ((b11 >>> 6) & 3)];
        int i13 = i11 + 3;
        bArr2[i11 + 2] = bArr3[(b11 >>> 1) & 31];
        int i14 = i11 + 4;
        bArr2[i13] = bArr3[(b11 & 1) << 4];
        int i15 = 0;
        while (i15 < 4) {
            bArr2[i14] = 61;
            i15++;
            i14++;
        }
    }

    private final void g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = this.f18367a;
        byte b10 = bArr[i10];
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        byte b11 = bArr[i10 + 1];
        bArr2[i11 + 1] = bArr3[((b10 & 7) << 2) | ((b11 >>> 6) & 3)];
        bArr2[i11 + 2] = bArr3[(b11 >>> 1) & 31];
        int i12 = i11 + 4;
        byte b12 = bArr[i10 + 2];
        bArr2[i11 + 3] = bArr3[((b12 >>> 4) & 15) | ((b11 & 1) << 4)];
        int i13 = i11 + 5;
        bArr2[i12] = bArr3[(b12 & 15) << 1];
        int i14 = 0;
        while (i14 < 3) {
            bArr2[i13] = 61;
            i14++;
            i13++;
        }
    }

    private final void h(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = this.f18367a;
        byte b10 = bArr[i10];
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        byte b11 = bArr[i10 + 1];
        bArr2[i11 + 1] = bArr3[((b10 & 7) << 2) | ((b11 >>> 6) & 3)];
        bArr2[i11 + 2] = bArr3[(b11 >>> 1) & 31];
        byte b12 = bArr[i10 + 2];
        bArr2[i11 + 3] = bArr3[((b11 & 1) << 4) | ((b12 >>> 4) & 15)];
        byte b13 = bArr[i10 + 3];
        bArr2[i11 + 4] = bArr3[((b13 >>> 7) & 1) | ((b12 & 15) << 1)];
        bArr2[i11 + 5] = bArr3[(b13 >>> 2) & 31];
        bArr2[i11 + 6] = bArr3[(b13 & 3) << 3];
        bArr2[i11 + 7] = 61;
    }

    private final void i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = this.f18367a;
        byte b10 = bArr[i10];
        bArr2[i11] = bArr3[(b10 >>> 3) & 31];
        byte b11 = bArr[i10 + 1];
        bArr2[i11 + 1] = bArr3[((b10 & 7) << 2) | ((b11 >>> 6) & 3)];
        bArr2[i11 + 2] = bArr3[(b11 >>> 1) & 31];
        byte b12 = bArr[i10 + 2];
        bArr2[i11 + 3] = bArr3[((b11 & 1) << 4) | ((b12 >>> 4) & 15)];
        byte b13 = bArr[i10 + 3];
        bArr2[i11 + 4] = bArr3[((b12 & 15) << 1) | ((b13 >>> 7) & 1)];
        bArr2[i11 + 5] = bArr3[(b13 >>> 2) & 31];
        byte b14 = bArr[i10 + 4];
        bArr2[i11 + 6] = bArr3[((b14 >>> 5) & 7) | ((b13 & 3) << 3)];
        bArr2[i11 + 7] = bArr3[b14 & 31];
    }

    public final byte[] a(byte[] bArr, int i10) {
        int i11;
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("Input is expected to be encoded in multiple of 8 bytes but found: " + i10);
        }
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 < 6 && i12 > -1 && bArr[i12] == 61) {
            i12--;
            i13++;
        }
        if (i13 != 0) {
            int i14 = 4;
            if (i13 != 1) {
                i11 = 3;
                if (i13 != 3) {
                    if (i13 == 4) {
                        i14 = 2;
                        i11 = i14;
                    } else {
                        if (i13 != 6) {
                            throw new IllegalArgumentException("Invalid number of paddings " + i13);
                        }
                        i11 = 1;
                    }
                }
            } else {
                i11 = i14;
            }
        } else {
            i11 = 5;
        }
        int i15 = ((i10 / 8) * 5) - (5 - i11);
        byte[] bArr2 = new byte[i15];
        int i16 = 0;
        int i17 = 0;
        while (i17 < i15 - (i11 % 5)) {
            c(bArr, i16, bArr2, i17);
            i16 += 8;
            i17 += 5;
        }
        if (i11 < 5) {
            b(i11, bArr, i16, bArr2, i17);
        }
        return bArr2;
    }

    public final byte[] d(byte[] bArr) {
        int length = bArr.length / 5;
        int length2 = bArr.length % 5;
        int i10 = 0;
        if (length2 == 0) {
            byte[] bArr2 = new byte[length * 8];
            int i11 = 0;
            while (i10 < bArr.length) {
                i(bArr, i10, bArr2, i11);
                i10 += 5;
                i11 += 8;
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[(length + 1) * 8];
        int i12 = 0;
        while (i10 < bArr.length - length2) {
            i(bArr, i10, bArr3, i12);
            i10 += 5;
            i12 += 8;
        }
        if (length2 == 1) {
            e(bArr, i10, bArr3, i12);
        } else if (length2 == 2) {
            f(bArr, i10, bArr3, i12);
        } else if (length2 == 3) {
            g(bArr, i10, bArr3, i12);
        } else if (length2 == 4) {
            h(bArr, i10, bArr3, i12);
        }
        return bArr3;
    }

    protected abstract int j(byte b10);
}
