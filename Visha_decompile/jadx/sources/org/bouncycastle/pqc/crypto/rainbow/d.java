package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.ci;
import defpackage.mn8;
import defpackage.on8;
import java.lang.reflect.Array;

public class d extends mn8 {
    public short[][][] e;
    public byte[] f;
    public short[][][] g;
    public short[][][] h;
    public short[][][] i;
    public short[][][] j;
    public short[][][] k;

    public d(b bVar, byte[] bArr) {
        super(false, bVar);
        int iD = bVar.d();
        int iE = bVar.e();
        if (b().j() != Version.CLASSIC) {
            this.f = ci.q(bArr, 0, bVar.b());
            int[] iArr = {bVar.g(), bVar.i(), bVar.h()};
            Class cls = Short.TYPE;
            this.g = (short[][][]) Array.newInstance((Class<?>) cls, iArr);
            this.h = (short[][][]) Array.newInstance((Class<?>) cls, bVar.g(), bVar.g(), bVar.g());
            this.i = (short[][][]) Array.newInstance((Class<?>) cls, bVar.g(), bVar.g(), bVar.h());
            this.j = (short[][][]) Array.newInstance((Class<?>) cls, bVar.g(), bVar.h(), bVar.h());
            this.k = (short[][][]) Array.newInstance((Class<?>) cls, bVar.h(), bVar.h(), bVar.h());
            int iB = bVar.b();
            int i = iB + on8.i(this.g, bArr, iB, false);
            int i2 = i + on8.i(this.h, bArr, i, true);
            int i3 = i2 + on8.i(this.i, bArr, i2, false);
            int i4 = i3 + on8.i(this.j, bArr, i3, true);
            if (i4 + on8.i(this.k, bArr, i4, true) != bArr.length) {
                throw new IllegalArgumentException("unparsed data in key encoding");
            }
            return;
        }
        this.e = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, iD, iE, iE);
        int i5 = 0;
        for (int i6 = 0; i6 < iE; i6++) {
            for (int i7 = 0; i7 < iE; i7++) {
                for (int i8 = 0; i8 < iD; i8++) {
                    short[][][] sArr = this.e;
                    if (i6 > i7) {
                        sArr[i8][i6][i7] = 0;
                    } else {
                        sArr[i8][i6][i7] = (short) (bArr[i5] & 255);
                        i5++;
                    }
                }
            }
        }
    }

    public byte[] getEncoded() {
        return b().j() != Version.CLASSIC ? ci.k(ci.k(ci.k(ci.k(ci.k(this.f, on8.f(this.g, false)), on8.f(this.h, true)), on8.f(this.i, false)), on8.f(this.j, true)), on8.f(this.k, true)) : on8.f(this.e, true);
    }
}
