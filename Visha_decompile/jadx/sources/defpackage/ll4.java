package defpackage;

public class ll4 extends il4 {
    public byte[] d;

    public ll4(kl4 kl4Var, byte[] bArr) {
        super(true, kl4Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
