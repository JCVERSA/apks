package org.bouncycastle.pqc.crypto.xmss;

import defpackage.cg5;
import defpackage.ci;
import defpackage.hgc;
import defpackage.igc;
import defpackage.nrc;

public final class d {
    public final hgc a;
    public final cg5 b;
    public byte[] c;
    public byte[] d;

    public d(hgc hgcVar) {
        if (hgcVar == null) {
            throw new NullPointerException("params == null");
        }
        this.a = hgcVar;
        int iC = hgcVar.c();
        this.b = new cg5(hgcVar.b(), iC);
        this.c = new byte[iC];
        this.d = new byte[iC];
    }

    public final byte[] a(byte[] bArr, int i, int i2, c cVar) {
        int iC = this.a.c();
        if (bArr == null) {
            throw new NullPointerException("startHash == null");
        }
        if (bArr.length != iC) {
            throw new IllegalArgumentException("startHash needs to be " + iC + "bytes");
        }
        if (cVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (cVar.d() == null) {
            throw new NullPointerException("otsHashAddress byte array == null");
        }
        int i3 = i + i2;
        if (i3 > this.a.d() - 1) {
            throw new IllegalArgumentException("max chain length must not be greater than w");
        }
        if (i2 == 0) {
            return bArr;
        }
        byte[] bArrA = a(bArr, i, i2 - 1, cVar);
        c cVar2 = (c) ((c.b) ((c.b) ((c.b) new c.b().g(cVar.b())).h(cVar.c())).p(cVar.g()).n(cVar.e()).o(i3 - 1).f(0)).l();
        byte[] bArrC = this.b.c(this.d, cVar2.d());
        byte[] bArrC2 = this.b.c(this.d, ((c) ((c.b) ((c.b) ((c.b) new c.b().g(cVar2.b())).h(cVar2.c())).p(cVar2.g()).n(cVar2.e()).o(cVar2.f()).f(1)).l()).d());
        byte[] bArr2 = new byte[iC];
        for (int i4 = 0; i4 < iC; i4++) {
            bArr2[i4] = (byte) (bArrA[i4] ^ bArrC2[i4]);
        }
        return this.b.a(bArrC, bArr2);
    }

    public final byte[] b(int i) {
        if (i < 0 || i >= this.a.a()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.b.c(this.c, nrc.q(i, 32));
    }

    public cg5 c() {
        return this.b;
    }

    public hgc d() {
        return this.a;
    }

    public igc e(c cVar) {
        if (cVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        byte[][] bArr = new byte[this.a.a()][];
        for (int i = 0; i < this.a.a(); i++) {
            cVar = (c) ((c.b) ((c.b) ((c.b) new c.b().g(cVar.b())).h(cVar.c())).p(cVar.g()).n(i).o(cVar.f()).f(cVar.a())).l();
            bArr[i] = a(b(i), 0, this.a.d() - 1, cVar);
        }
        return new igc(this.a, bArr);
    }

    public byte[] f() {
        return ci.f(this.d);
    }

    public byte[] g(byte[] bArr, c cVar) {
        return this.b.c(bArr, ((c) ((c.b) ((c.b) new c.b().g(cVar.b())).h(cVar.c())).p(cVar.g()).l()).d());
    }

    public void h(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("secretKeySeed == null");
        }
        if (bArr.length != this.a.c()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        if (bArr2 == null) {
            throw new NullPointerException("publicSeed == null");
        }
        if (bArr2.length != this.a.c()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.c = bArr;
        this.d = bArr2;
    }
}
