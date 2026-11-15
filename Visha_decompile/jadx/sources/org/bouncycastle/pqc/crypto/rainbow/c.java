package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.ci;
import defpackage.mn8;
import defpackage.on8;
import java.lang.reflect.Array;

public class c extends mn8 {
    public final byte[] e;
    public final short[][] f;
    public final short[][] g;
    public final short[][] h;
    public final short[][] i;
    public final short[][][] j;
    public final short[][][] k;
    public final short[][][] l;
    public final short[][][] m;
    public final short[][][] n;
    public final short[][][] o;
    public final short[][][] p;
    public final byte[] q;
    public byte[] r;

    public c(b bVar, byte[] bArr) {
        super(true, bVar);
        if (bVar.j() == Version.COMPRESSED) {
            byte[] bArrQ = ci.q(bArr, 0, bVar.b());
            this.q = bArrQ;
            byte[] bArrQ2 = ci.q(bArr, bVar.b(), bVar.b() + bVar.c());
            this.e = bArrQ2;
            c cVarD = new a(bVar, bArrQ, bArrQ2).d();
            this.r = cVarD.r;
            this.f = cVarD.f;
            this.g = cVarD.g;
            this.h = cVarD.h;
            this.i = cVarD.i;
            this.j = cVarD.j;
            this.k = cVarD.k;
            this.l = cVarD.l;
            this.m = cVarD.m;
            this.n = cVarD.n;
            this.o = cVarD.o;
            this.p = cVarD.p;
            return;
        }
        int i = bVar.i();
        int iG = bVar.g();
        int iH = bVar.h();
        Class cls = Short.TYPE;
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) cls, iG, iH);
        this.f = sArr;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) cls, i, iG);
        this.g = sArr2;
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) cls, i, iH);
        this.i = sArr3;
        short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) cls, iG, iH);
        this.h = sArr4;
        short[][][] sArr5 = (short[][][]) Array.newInstance((Class<?>) cls, iG, i, i);
        this.j = sArr5;
        short[][][] sArr6 = (short[][][]) Array.newInstance((Class<?>) cls, iG, i, iG);
        this.k = sArr6;
        short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) cls, iH, i, i);
        this.l = sArr7;
        short[][][] sArr8 = (short[][][]) Array.newInstance((Class<?>) cls, iH, i, iG);
        this.m = sArr8;
        short[][][] sArr9 = (short[][][]) Array.newInstance((Class<?>) cls, iH, i, iH);
        this.n = sArr9;
        short[][][] sArr10 = (short[][][]) Array.newInstance((Class<?>) cls, iH, iG, iG);
        this.o = sArr10;
        short[][][] sArr11 = (short[][][]) Array.newInstance((Class<?>) cls, iH, iG, iH);
        this.p = sArr11;
        this.q = null;
        byte[] bArrQ3 = ci.q(bArr, 0, bVar.c());
        this.e = bArrQ3;
        int length = bArrQ3.length;
        int iH2 = length + on8.h(sArr, bArr, length);
        int iH3 = iH2 + on8.h(sArr2, bArr, iH2);
        int iH4 = iH3 + on8.h(sArr3, bArr, iH3);
        int iH5 = iH4 + on8.h(sArr4, bArr, iH4);
        int i2 = iH5 + on8.i(sArr5, bArr, iH5, true);
        int i3 = i2 + on8.i(sArr6, bArr, i2, false);
        int i4 = i3 + on8.i(sArr7, bArr, i3, true);
        int i5 = i4 + on8.i(sArr8, bArr, i4, false);
        int i6 = i5 + on8.i(sArr9, bArr, i5, false);
        int i7 = i6 + on8.i(sArr10, bArr, i6, true);
        this.r = ci.q(bArr, i7 + on8.i(sArr11, bArr, i7, false), bArr.length);
    }

    public byte[] c() {
        return b().j() == Version.COMPRESSED ? ci.k(this.q, this.e) : ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(ci.k(this.e, on8.e(this.f)), on8.e(this.g)), on8.e(this.i)), on8.e(this.h)), on8.f(this.j, true)), on8.f(this.k, false)), on8.f(this.l, true)), on8.f(this.m, false)), on8.f(this.n, false)), on8.f(this.o, true)), on8.f(this.p, false));
    }

    public byte[] d() {
        return this.r;
    }

    public byte[] getEncoded() {
        return b().j() == Version.COMPRESSED ? ci.k(this.q, this.e) : ci.k(c(), this.r);
    }

    public c(b bVar, byte[] bArr, short[][] sArr, short[][] sArr2, short[][] sArr3, short[][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11, byte[] bArr2) {
        super(true, bVar);
        this.q = null;
        this.r = bArr2;
        this.e = (byte[]) bArr.clone();
        this.f = on8.a(sArr);
        this.g = on8.a(sArr2);
        this.h = on8.a(sArr3);
        this.i = on8.a(sArr4);
        this.j = on8.b(sArr5);
        this.k = on8.b(sArr6);
        this.l = on8.b(sArr7);
        this.m = on8.b(sArr8);
        this.n = on8.b(sArr9);
        this.o = on8.b(sArr10);
        this.p = on8.b(sArr11);
    }
}
