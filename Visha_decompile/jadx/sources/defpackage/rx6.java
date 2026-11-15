package defpackage;

public class rx6 extends ox6 {
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;

    public rx6(qx6 qx6Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, qx6Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
        this.g = ci.f(bArr4);
    }

    public byte[] c() {
        return ci.f(this.d);
    }

    public byte[] d() {
        return ci.f(this.g);
    }

    public byte[] e() {
        return ci.f(this.e);
    }

    public byte[] f() {
        return ci.f(this.f);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[b().b()];
        byte[] bArr2 = this.d;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        byte[] bArr3 = this.e;
        System.arraycopy(bArr3, 0, bArr, this.d.length, bArr3.length);
        byte[] bArr4 = this.f;
        System.arraycopy(bArr4, 0, bArr, this.d.length + this.e.length, bArr4.length);
        byte[] bArr5 = this.g;
        System.arraycopy(bArr5, 0, bArr, this.d.length + this.e.length + this.f.length, bArr5.length);
        return bArr;
    }
}
