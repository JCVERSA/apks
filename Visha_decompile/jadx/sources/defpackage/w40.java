package defpackage;

public class w40 extends t40 {
    public byte[] d;
    public byte[] e;
    public byte[] f;

    public w40(v40 v40Var, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(true, v40Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
    }

    public byte[] getEncoded() {
        return ci.l(this.d, this.e, this.f);
    }
}
