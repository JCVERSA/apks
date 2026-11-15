package org.brotli.dec;

final class h {

    private byte[] f68476a;

    private int[] f68477b;

    h() {
    }

    static void a(h hVar, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int[] iArr = hVar.f68477b;
            byte[] bArr = hVar.f68476a;
            int i12 = i11 * 4;
            iArr[i11] = ((bArr[i12 + 3] & 255) << 24) | (bArr[i12] & 255) | ((bArr[i12 + 1] & 255) << 8) | ((bArr[i12 + 2] & 255) << 16);
        }
    }

    static void b(h hVar, byte[] bArr, int[] iArr) {
        hVar.f68476a = bArr;
        hVar.f68477b = iArr;
    }
}
