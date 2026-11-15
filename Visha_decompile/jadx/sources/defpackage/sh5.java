package defpackage;

public class sh5 extends ph5 {
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;

    public sh5(rh5 rh5Var, byte[] bArr) {
        super(true, rh5Var);
        mh5 mh5VarA = rh5Var.a();
        this.d = ci.q(bArr, 0, mh5VarA.d());
        int iD = mh5VarA.d();
        this.g = ci.q(bArr, iD, (mh5VarA.c() + iD) - 32);
        int iC = iD + (mh5VarA.c() - 32);
        int i = iC + 32;
        this.h = ci.q(bArr, iC, i);
        int i2 = iC + 64;
        this.e = ci.q(bArr, i, i2);
        this.f = ci.q(bArr, i2, iC + 96);
    }

    public uh5 c() {
        return new uh5(b(), this.g, this.h);
    }

    public byte[] getEncoded() {
        return ci.n(new byte[][]{this.d, this.g, this.h, this.e, this.f});
    }
}
