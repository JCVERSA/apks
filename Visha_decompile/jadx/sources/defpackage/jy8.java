package defpackage;

public class jy8 extends fy8 {
    public final byte[] d;

    public jy8(hy8 hy8Var, byte[] bArr) {
        super(false, hy8Var);
        this.d = ci.f(bArr);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }
}
