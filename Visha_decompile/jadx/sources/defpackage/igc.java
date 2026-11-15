package defpackage;

public final class igc {
    public final byte[][] a;

    public igc(hgc hgcVar, byte[][] bArr) {
        if (hgcVar == null) {
            throw new NullPointerException("params == null");
        }
        if (bArr == null) {
            throw new NullPointerException("publicKey == null");
        }
        if (nrc.k(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        }
        if (bArr.length != hgcVar.a()) {
            throw new IllegalArgumentException("wrong publicKey size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != hgcVar.c()) {
                throw new IllegalArgumentException("wrong publicKey format");
            }
        }
        this.a = nrc.d(bArr);
    }

    public byte[][] a() {
        return nrc.d(this.a);
    }
}
