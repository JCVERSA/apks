package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class vx8 extends er5 {
    public vx8() {
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
        reset();
        return 48;
    }

    @Override
    public String c() {
        return "SHA-384";
    }

    @Override
    public en6 d() {
        return new vx8(this);
    }

    @Override
    public void e(en6 en6Var) {
        super.p((vx8) en6Var);
    }

    @Override
    public int g() {
        return 48;
    }

    @Override
    public void reset() {
        super.reset();
        this.f = -3766243637369397544L;
        this.g = 7105036623409894663L;
        this.h = -7973340178411365097L;
        this.i = 1526699215303891257L;
        this.j = 7436329637833083697L;
        this.k = -8163818279084223215L;
        this.l = -2662702644619276377L;
        this.m = 5167115440072839076L;
    }

    public xl1 u() {
        return ylb.a(this, 256, this.a);
    }

    public vx8(vx8 vx8Var) {
        super(vx8Var);
        zl1.a(u());
    }

    public vx8(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        zl1.a(u());
        reset();
    }
}
