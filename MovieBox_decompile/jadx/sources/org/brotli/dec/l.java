package org.brotli.dec;

abstract class l {

    private static final byte[] f68516a = new byte[1024];

    private static final int[] f68517b = new int[1024];

    static void a(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int iMin = Math.min(i12 + 1024, i11) - i12;
            System.arraycopy(f68516a, 0, bArr, i10 + i12, iMin);
            i12 += iMin;
        }
    }

    static void b(int[] iArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int iMin = Math.min(i12 + 1024, i11) - i12;
            System.arraycopy(f68517b, 0, iArr, i10 + i12, iMin);
            i12 += iMin;
        }
    }
}
