package kd;

import com.google.zxing.NotFoundException;

public abstract class j extends com.google.zxing.a {

    private static final byte[] f63951d = new byte[0];

    private byte[] f63952b;

    private final int[] f63953c;

    public j(com.google.zxing.e eVar) {
        super(eVar);
        this.f63952b = f63951d;
        this.f63953c = new int[32];
    }

    private static int g(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            if (i14 > i10) {
                i12 = i13;
                i10 = i14;
            }
            if (i14 > i11) {
                i11 = i14;
            }
        }
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            int i18 = i17 - i12;
            int i19 = iArr[i17] * i18 * i18;
            if (i19 > i16) {
                i15 = i17;
                i16 = i19;
            }
        }
        if (i12 <= i15) {
            int i20 = i12;
            i12 = i15;
            i15 = i20;
        }
        if (i12 - i15 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i21 = i12 - 1;
        int i22 = -1;
        int i23 = i21;
        while (i21 > i15) {
            int i24 = i21 - i15;
            int i25 = i24 * i24 * (i12 - i21) * (i11 - iArr[i21]);
            if (i25 > i22) {
                i23 = i21;
                i22 = i25;
            }
            i21--;
        }
        return i23 << 3;
    }

    private void h(int i10) {
        if (this.f63952b.length < i10) {
            this.f63952b = new byte[i10];
        }
        for (int i11 = 0; i11 < 32; i11++) {
            this.f63953c[i11] = 0;
        }
    }

    @Override
    public b b() throws NotFoundException {
        com.google.zxing.e eVarE = e();
        int iD = eVarE.d();
        int iA = eVarE.a();
        b bVar = new b(iD, iA);
        h(iD);
        int[] iArr = this.f63953c;
        for (int i10 = 1; i10 < 5; i10++) {
            byte[] bArrC = eVarE.c((iA * i10) / 5, this.f63952b);
            int i11 = (iD * 4) / 5;
            for (int i12 = iD / 5; i12 < i11; i12++) {
                int i13 = (bArrC[i12] & 255) >> 3;
                iArr[i13] = iArr[i13] + 1;
            }
        }
        int iG = g(iArr);
        byte[] bArrB = eVarE.b();
        for (int i14 = 0; i14 < iA; i14++) {
            int i15 = i14 * iD;
            for (int i16 = 0; i16 < iD; i16++) {
                if ((bArrB[i15 + i16] & 255) < iG) {
                    bVar.r(i16, i14);
                }
            }
        }
        return bVar;
    }

    @Override
    public a c(int i10, a aVar) throws NotFoundException {
        com.google.zxing.e eVarE = e();
        int iD = eVarE.d();
        if (aVar == null || aVar.m() < iD) {
            aVar = new a(iD);
        } else {
            aVar.e();
        }
        h(iD);
        byte[] bArrC = eVarE.c(i10, this.f63952b);
        int[] iArr = this.f63953c;
        for (int i11 = 0; i11 < iD; i11++) {
            int i12 = (bArrC[i11] & 255) >> 3;
            iArr[i12] = iArr[i12] + 1;
        }
        int iG = g(iArr);
        if (iD < 3) {
            for (int i13 = 0; i13 < iD; i13++) {
                if ((bArrC[i13] & 255) < iG) {
                    aVar.r(i13);
                }
            }
        } else {
            int i14 = 1;
            int i15 = bArrC[0] & 255;
            int i16 = bArrC[1] & 255;
            while (i14 < iD - 1) {
                int i17 = i14 + 1;
                int i18 = bArrC[i17] & 255;
                if ((((i16 * 4) - i15) - i18) / 2 < iG) {
                    aVar.r(i14);
                }
                i15 = i16;
                i14 = i17;
                i16 = i18;
            }
        }
        return aVar;
    }
}
