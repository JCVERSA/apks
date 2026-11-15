package com.google.zxing.datamatrix.decoder;

final class b {

    private final int f32037a;

    private final byte[] f32038b;

    private b(int i10, byte[] bArr) {
        this.f32037a = i10;
        this.f32038b = bArr;
    }

    static b[] b(byte[] bArr, d dVar) {
        d.c cVarD = dVar.d();
        d.b[] bVarArrA = cVarD.a();
        int iA = 0;
        for (d.b bVar : bVarArrA) {
            iA += bVar.a();
        }
        b[] bVarArr = new b[iA];
        int i10 = 0;
        for (d.b bVar2 : bVarArrA) {
            int i11 = 0;
            while (i11 < bVar2.a()) {
                int iB = bVar2.b();
                bVarArr[i10] = new b(iB, new byte[cVarD.b() + iB]);
                i11++;
                i10++;
            }
        }
        int length = bVarArr[0].f32038b.length - cVarD.b();
        int i12 = length - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = 0;
            while (i15 < i10) {
                bVarArr[i15].f32038b[i14] = bArr[i13];
                i15++;
                i13++;
            }
        }
        boolean z10 = dVar.i() == 24;
        int i16 = z10 ? 8 : i10;
        int i17 = 0;
        while (i17 < i16) {
            bVarArr[i17].f32038b[i12] = bArr[i13];
            i17++;
            i13++;
        }
        int length2 = bVarArr[0].f32038b.length;
        while (length < length2) {
            int i18 = 0;
            while (i18 < i10) {
                int i19 = z10 ? (i18 + 8) % i10 : i18;
                bVarArr[i19].f32038b[(!z10 || i19 <= 7) ? length : length - 1] = bArr[i13];
                i18++;
                i13++;
            }
            length++;
        }
        if (i13 == bArr.length) {
            return bVarArr;
        }
        throw new IllegalArgumentException();
    }

    byte[] a() {
        return this.f32038b;
    }

    int c() {
        return this.f32037a;
    }
}
