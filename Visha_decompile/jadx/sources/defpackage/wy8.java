package defpackage;

public class wy8 extends ty8 {
    public final ay8 d;
    public final vu7 e;

    public wy8(vy8 vy8Var, byte[] bArr) {
        super(true, vy8Var);
        int iB = vy8Var.b();
        int i = iB * 4;
        if (bArr.length != i) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int i2 = iB * 2;
        this.d = new ay8(ci.q(bArr, 0, iB), ci.q(bArr, iB, i2));
        int i3 = iB * 3;
        this.e = new vu7(ci.q(bArr, i2, i3), ci.q(bArr, i3, i));
    }

    public byte[] c() {
        vu7 vu7Var = this.e;
        return ci.k(vu7Var.a, vu7Var.b);
    }

    public byte[] getEncoded() {
        ay8 ay8Var = this.d;
        byte[] bArr = ay8Var.a;
        byte[] bArr2 = ay8Var.b;
        vu7 vu7Var = this.e;
        return ci.n(new byte[][]{bArr, bArr2, vu7Var.a, vu7Var.b});
    }

    public wy8(vy8 vy8Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, vy8Var);
        this.d = new ay8(bArr, bArr2);
        this.e = new vu7(bArr3, bArr4);
    }
}
