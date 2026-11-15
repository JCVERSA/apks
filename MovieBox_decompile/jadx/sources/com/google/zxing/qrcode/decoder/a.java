package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;

final class a {

    private final kd.b f32156a;

    private g f32157b;

    private e f32158c;

    private boolean f32159d;

    a(kd.b bVar) throws FormatException {
        int iK = bVar.k();
        if (iK < 21 || (iK & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.f32156a = bVar;
    }

    private int a(int i10, int i11, int i12) {
        return this.f32159d ? this.f32156a.h(i11, i10) : this.f32156a.h(i10, i11) ? (i12 << 1) | 1 : i12 << 1;
    }

    void b() {
        int i10 = 0;
        while (i10 < this.f32156a.n()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f32156a.k(); i12++) {
                if (this.f32156a.h(i10, i12) != this.f32156a.h(i12, i10)) {
                    this.f32156a.g(i12, i10);
                    this.f32156a.g(i10, i12);
                }
            }
            i10 = i11;
        }
    }

    byte[] c() throws FormatException {
        e eVarD = d();
        g gVarE = e();
        DataMask dataMask = DataMask.values()[eVarD.c()];
        int iK = this.f32156a.k();
        dataMask.unmaskBitMatrix(this.f32156a, iK);
        kd.b bVarA = gVarE.a();
        byte[] bArr = new byte[gVarE.h()];
        int i10 = iK - 1;
        boolean z10 = true;
        int i11 = i10;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 > 0) {
            if (i11 == 6) {
                i11--;
            }
            for (int i15 = 0; i15 < iK; i15++) {
                int i16 = z10 ? i10 - i15 : i15;
                for (int i17 = 0; i17 < 2; i17++) {
                    int i18 = i11 - i17;
                    if (!bVarA.h(i18, i16)) {
                        i13++;
                        i14 <<= 1;
                        if (this.f32156a.h(i18, i16)) {
                            i14 |= 1;
                        }
                        if (i13 == 8) {
                            bArr[i12] = (byte) i14;
                            i12++;
                            i13 = 0;
                            i14 = 0;
                        }
                    }
                }
            }
            z10 = !z10;
            i11 -= 2;
        }
        if (i12 == gVarE.h()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    e d() throws FormatException {
        e eVar = this.f32158c;
        if (eVar != null) {
            return eVar;
        }
        int iA = 0;
        int iA2 = 0;
        for (int i10 = 0; i10 < 6; i10++) {
            iA2 = a(i10, 8, iA2);
        }
        int iA3 = a(8, 7, a(8, 8, a(7, 8, iA2)));
        for (int i11 = 5; i11 >= 0; i11--) {
            iA3 = a(8, i11, iA3);
        }
        int iK = this.f32156a.k();
        int i12 = iK - 7;
        for (int i13 = iK - 1; i13 >= i12; i13--) {
            iA = a(8, i13, iA);
        }
        for (int i14 = iK - 8; i14 < iK; i14++) {
            iA = a(i14, 8, iA);
        }
        e eVarA = e.a(iA3, iA);
        this.f32158c = eVarA;
        if (eVarA != null) {
            return eVarA;
        }
        throw FormatException.getFormatInstance();
    }

    g e() throws FormatException {
        g gVar = this.f32157b;
        if (gVar != null) {
            return gVar;
        }
        int iK = this.f32156a.k();
        int i10 = (iK - 17) / 4;
        if (i10 <= 6) {
            return g.i(i10);
        }
        int i11 = iK - 11;
        int iA = 0;
        int iA2 = 0;
        for (int i12 = 5; i12 >= 0; i12--) {
            for (int i13 = iK - 9; i13 >= i11; i13--) {
                iA2 = a(i13, i12, iA2);
            }
        }
        g gVarC = g.c(iA2);
        if (gVarC != null && gVarC.e() == iK) {
            this.f32157b = gVarC;
            return gVarC;
        }
        for (int i14 = 5; i14 >= 0; i14--) {
            for (int i15 = iK - 9; i15 >= i11; i15--) {
                iA = a(i14, i15, iA);
            }
        }
        g gVarC2 = g.c(iA);
        if (gVarC2 == null || gVarC2.e() != iK) {
            throw FormatException.getFormatInstance();
        }
        this.f32157b = gVarC2;
        return gVarC2;
    }

    void f() {
        if (this.f32158c == null) {
            return;
        }
        DataMask.values()[this.f32158c.c()].unmaskBitMatrix(this.f32156a, this.f32156a.k());
    }

    void g(boolean z10) {
        this.f32157b = null;
        this.f32158c = null;
        this.f32159d = z10;
    }
}
