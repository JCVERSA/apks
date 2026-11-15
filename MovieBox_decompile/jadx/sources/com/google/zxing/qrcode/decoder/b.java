package com.google.zxing.qrcode.decoder;

final class b {

    private final int f32160a;

    private final byte[] f32161b;

    private b(int i10, byte[] bArr) {
        this.f32160a = i10;
        this.f32161b = bArr;
    }

    static b[] b(byte[] bArr, g gVar, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != gVar.h()) {
            throw new IllegalArgumentException();
        }
        g.b bVarF = gVar.f(errorCorrectionLevel);
        g.a[] aVarArrA = bVarF.a();
        int iA = 0;
        for (g.a aVar : aVarArrA) {
            iA += aVar.a();
        }
        b[] bVarArr = new b[iA];
        int i10 = 0;
        for (g.a aVar2 : aVarArrA) {
            int i11 = 0;
            while (i11 < aVar2.a()) {
                int iB = aVar2.b();
                bVarArr[i10] = new b(iB, new byte[bVarF.b() + iB]);
                i11++;
                i10++;
            }
        }
        int length = bVarArr[0].f32161b.length;
        int i12 = iA - 1;
        while (i12 >= 0 && bVarArr[i12].f32161b.length != length) {
            i12--;
        }
        int i13 = i12 + 1;
        int iB2 = length - bVarF.b();
        int i14 = 0;
        for (int i15 = 0; i15 < iB2; i15++) {
            int i16 = 0;
            while (i16 < i10) {
                bVarArr[i16].f32161b[i15] = bArr[i14];
                i16++;
                i14++;
            }
        }
        int i17 = i13;
        while (i17 < i10) {
            bVarArr[i17].f32161b[iB2] = bArr[i14];
            i17++;
            i14++;
        }
        int length2 = bVarArr[0].f32161b.length;
        while (iB2 < length2) {
            int i18 = 0;
            while (i18 < i10) {
                bVarArr[i18].f32161b[i18 < i13 ? iB2 : iB2 + 1] = bArr[i14];
                i18++;
                i14++;
            }
            iB2++;
        }
        return bVarArr;
    }

    byte[] a() {
        return this.f32161b;
    }

    int c() {
        return this.f32160a;
    }
}
