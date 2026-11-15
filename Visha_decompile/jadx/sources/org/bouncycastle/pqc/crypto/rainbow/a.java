package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.ae1;
import defpackage.ci;
import defpackage.on8;
import java.security.SecureRandom;

public class a {
    public short[][][] A;
    public short[][][] B;
    public Version b;
    public b c;
    public int e;
    public int f;
    public int g;
    public byte[] h;
    public byte[] i;
    public short[][] j;
    public short[][] k;
    public short[][] l;
    public short[][] m;
    public short[][] n;
    public short[][][] o;
    public short[][][] p;
    public short[][][] q;
    public short[][][] r;
    public short[][][] s;
    public short[][][] t;
    public short[][][] u;
    public short[][][] v;
    public short[][][] w;
    public short[][][] x;
    public short[][][] y;
    public short[][][] z;
    public ae1 d = new ae1();
    public SecureRandom a = null;

    public a(b bVar, byte[] bArr, byte[] bArr2) {
        this.c = bVar;
        this.b = bVar.j();
        this.i = bArr;
        this.h = bArr2;
        this.e = this.c.i();
        this.f = this.c.g();
        this.g = this.c.h();
    }

    public final void a() {
        this.o = on8.b(this.v);
        this.p = new short[this.f][][];
        for (int i = 0; i < this.f; i++) {
            this.p[i] = this.d.b(this.v[i]);
            short[][][] sArr = this.p;
            sArr[i] = this.d.c(sArr[i], this.k);
            short[][][] sArr2 = this.p;
            sArr2[i] = this.d.a(sArr2[i], this.w[i]);
        }
        int i2 = this.g;
        this.r = new short[i2][][];
        this.s = new short[i2][][];
        this.t = new short[i2][][];
        this.u = new short[i2][][];
        this.q = on8.b(this.x);
        for (int i3 = 0; i3 < this.g; i3++) {
            short[][] sArrB = this.d.b(this.x[i3]);
            this.r[i3] = this.d.c(sArrB, this.k);
            short[][][] sArr3 = this.r;
            sArr3[i3] = this.d.a(sArr3[i3], this.y[i3]);
            this.s[i3] = this.d.c(sArrB, this.n);
            short[][] sArrC = this.d.c(this.y[i3], this.m);
            short[][][] sArr4 = this.s;
            sArr4[i3] = this.d.a(sArr4[i3], sArrC);
            short[][][] sArr5 = this.s;
            sArr5[i3] = this.d.a(sArr5[i3], this.z[i3]);
            short[][] sArrA = this.d.a(this.d.c(this.x[i3], this.k), this.y[i3]);
            short[][] sArrF = this.d.f(this.k);
            this.t[i3] = this.d.c(sArrF, sArrA);
            short[][][] sArr6 = this.t;
            sArr6[i3] = this.d.a(sArr6[i3], this.A[i3]);
            short[][][] sArr7 = this.t;
            sArr7[i3] = this.d.e(sArr7[i3]);
            this.u[i3] = this.d.c(sArrF, this.s[i3]);
            ae1 ae1Var = this.d;
            short[][] sArrC2 = ae1Var.c(ae1Var.f(this.y[i3]), this.n);
            short[][][] sArr8 = this.u;
            sArr8[i3] = this.d.a(sArr8[i3], sArrC2);
            short[][] sArrC3 = this.d.c(this.d.b(this.A[i3]), this.m);
            short[][][] sArr9 = this.u;
            sArr9[i3] = this.d.a(sArr9[i3], sArrC3);
            short[][][] sArr10 = this.u;
            sArr10[i3] = this.d.a(sArr10[i3], this.B[i3]);
        }
    }

    public final void b() {
        this.n = this.d.a(this.d.c(this.k, this.m), this.l);
    }

    public final void c() {
        RainbowDRBG rainbowDRBG = new RainbowDRBG(this.h, this.c.a());
        RainbowDRBG rainbowDRBG2 = new RainbowDRBG(this.i, this.c.a());
        f(rainbowDRBG);
        b();
        e(rainbowDRBG2);
        this.v = this.d.d(this.j, this.x, this.v);
        this.w = this.d.d(this.j, this.y, this.w);
        a();
    }

    public c d() {
        this.h = ci.f(this.h);
        this.i = ci.f(this.i);
        c();
        return new c(this.c, this.h, this.j, this.k, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, null);
    }

    public final void e(SecureRandom secureRandom) {
        int i = this.f;
        int i2 = this.e;
        this.v = on8.c(secureRandom, i, i2, i2, true);
        int i3 = this.f;
        this.w = on8.c(secureRandom, i3, this.e, i3, false);
        int i4 = this.g;
        int i5 = this.e;
        this.x = on8.c(secureRandom, i4, i5, i5, true);
        this.y = on8.c(secureRandom, this.g, this.e, this.f, false);
        int i6 = this.g;
        this.z = on8.c(secureRandom, i6, this.e, i6, false);
        int i7 = this.g;
        int i8 = this.f;
        this.A = on8.c(secureRandom, i7, i8, i8, true);
        int i9 = this.g;
        this.B = on8.c(secureRandom, i9, this.f, i9, false);
    }

    public final void f(SecureRandom secureRandom) {
        this.j = on8.d(secureRandom, this.f, this.g);
        this.k = on8.d(secureRandom, this.e, this.f);
        this.l = on8.d(secureRandom, this.e, this.g);
        this.m = on8.d(secureRandom, this.f, this.g);
    }
}
