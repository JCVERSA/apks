package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class xx8 extends er5 {
    public xx8() {
        this(CryptoServicePurpose.ANY);
    }

    @Override
    public int a(byte[] bArr, int i) {
        q();
        cv7.i(this.f, bArr, i);
        cv7.i(this.g, bArr, i + 8);
        cv7.i(this.h, bArr, i + 16);
        cv7.i(this.i, bArr, i + 24);
        cv7.i(this.j, bArr, i + 32);
        cv7.i(this.k, bArr, i + 40);
        cv7.i(this.l, bArr, i + 48);
        cv7.i(this.m, bArr, i + 56);
        reset();
        return 64;
    }

    @Override
    public String c() {
        return "SHA-512";
    }

    @Override
    public en6 d() {
        return new xx8(this);
    }

    @Override
    public void e(en6 en6Var) {
        p((xx8) en6Var);
    }

    @Override
    public int g() {
        return 64;
    }

    @Override
    public void reset() {
        super.reset();
        this.f = 7640891576956012808L;
        this.g = -4942790177534073029L;
        this.h = 4354685564936845355L;
        this.i = -6534734903238641935L;
        this.j = 5840696475078001361L;
        this.k = -7276294671716946913L;
        this.l = 2270897969802886507L;
        this.m = 6620516959819538809L;
    }

    public xl1 u() {
        return ylb.a(this, 256, this.a);
    }

    public xx8(xx8 xx8Var) {
        super(xx8Var);
        zl1.a(u());
    }

    public xx8(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        zl1.a(u());
        reset();
    }
}
