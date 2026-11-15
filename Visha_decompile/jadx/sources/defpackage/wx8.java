package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class wx8 extends mf5 {
    public wx8(int i) {
        super(r(i), CryptoServicePurpose.ANY);
    }

    private static int r(int i) {
        if (i == 224 || i == 256 || i == 384 || i == 512) {
            return i;
        }
        throw new IllegalArgumentException("'bitLength' " + i + " not supported for SHA-3");
    }

    @Override
    public int a(byte[] bArr, int i) {
        l(2, 2);
        return super.a(bArr, i);
    }

    @Override
    public String c() {
        return "SHA3-" + this.f;
    }
}
