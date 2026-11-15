package defpackage;

public class bp0 extends xo0 {
    public final byte[] d;

    public bp0(zo0 zo0Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, zo0Var);
        byte[] bArr6 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length + bArr5.length];
        this.d = bArr6;
        System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr6, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr6, length2, bArr3.length);
        int length3 = length2 + bArr3.length;
        System.arraycopy(bArr4, 0, bArr6, length3, bArr4.length);
        System.arraycopy(bArr5, 0, bArr6, length3 + bArr4.length, bArr5.length);
    }

    public byte[] c() {
        return ci.q(this.d, (b().c() * 2) + 40, this.d.length - 32);
    }

    public byte[] d() {
        return ci.q(this.d, 32, 40);
    }

    public byte[] e() {
        return ci.q(this.d, 0, 32);
    }

    public byte[] f() {
        return ci.q(this.d, 40, (b().c() * 2) + 40);
    }

    public byte[] g() {
        byte[] bArr = this.d;
        return ci.q(bArr, bArr.length - 32, bArr.length);
    }

    public byte[] getEncoded() {
        return ci.f(this.d);
    }

    public byte[] h() {
        vo0 vo0VarA = b().a();
        byte[] bArr = new byte[vo0VarA.d()];
        vo0VarA.c(this.d);
        return bArr;
    }
}
