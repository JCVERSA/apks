package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class yx8 extends mf5 implements csc {
    public yx8(int i) {
        super(r(i), CryptoServicePurpose.ANY);
    }

    public static int r(int i) {
        if (i == 128 || i == 256) {
            return i;
        }
        throw new IllegalArgumentException("'bitStrength' " + i + " not supported for SHAKE");
    }

    @Override
    public int a(byte[] bArr, int i) {
        return f(bArr, i, g());
    }

    @Override
    public String c() {
        return "SHAKE" + this.f;
    }

    @Override
    public int f(byte[] bArr, int i, int i2) {
        int iS = s(bArr, i, i2);
        reset();
        return iS;
    }

    @Override
    public int g() {
        return this.f / 4;
    }

    @Override
    public xl1 m() {
        return ylb.b(this, this.a);
    }

    public int s(byte[] bArr, int i, int i2) {
        if (!this.g) {
            l(15, 4);
        }
        q(bArr, i, ((long) i2) * 8);
        return i2;
    }
}
