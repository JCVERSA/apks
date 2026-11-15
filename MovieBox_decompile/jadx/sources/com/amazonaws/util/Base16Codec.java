package com.amazonaws.util;

class Base16Codec {

    private final byte[] f18369a = CodecUtils.toBytesDirect("0123456789ABCDEF");

    private static class LazyHolder {

        private static final byte[] f18370a = b();

        private static byte[] b() {
            byte[] bArr = new byte[103];
            for (int i10 = 0; i10 <= 102; i10++) {
                if (i10 >= 48 && i10 <= 57) {
                    bArr[i10] = (byte) (i10 - 48);
                } else if (i10 >= 65 && i10 <= 70) {
                    bArr[i10] = (byte) (i10 - 55);
                } else if (i10 < 97 || i10 > 102) {
                    bArr[i10] = -1;
                } else {
                    bArr[i10] = (byte) (i10 - 87);
                }
            }
            return bArr;
        }
    }

    Base16Codec() {
    }

    public byte[] a(byte[] bArr, int i10) {
        if (i10 % 2 != 0) {
            throw new IllegalArgumentException("Input is expected to be encoded in multiple of 2 bytes but found: " + i10);
        }
        int i11 = i10 / 2;
        byte[] bArr2 = new byte[i11];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + 1;
            int iC = c(bArr[i12]) << 4;
            i12 += 2;
            bArr2[i13] = (byte) (c(bArr[i14]) | iC);
        }
        return bArr2;
    }

    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            byte[] bArr3 = this.f18369a;
            bArr2[i10] = bArr3[(b10 >>> 4) & 15];
            i10 += 2;
            bArr2[i11] = bArr3[b10 & 15];
        }
        return bArr2;
    }

    protected int c(byte b10) {
        byte b11 = LazyHolder.f18370a[b10];
        if (b11 > -1) {
            return b11;
        }
        throw new IllegalArgumentException("Invalid base 16 character: '" + ((char) b10) + "'");
    }
}
