package defpackage;

public class iy8 extends fy8 {
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;

    public iy8(hy8 hy8Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, hy8Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
        this.g = ci.f(bArr4);
        this.h = ci.f(bArr5);
    }

    public byte[] c() {
        return ci.f(this.d);
    }

    public byte[] d() {
        return ci.f(this.e);
    }

    public byte[] e() {
        return ci.f(this.h);
    }

    public byte[] f() {
        return ci.f(this.f);
    }

    public byte[] g() {
        return ci.f(this.g);
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
        byte[] bArr6 = this.h;
        System.arraycopy(bArr6, 0, bArr, this.d.length + this.e.length + this.f.length + this.g.length, bArr6.length);
        return bArr;
    }
}
