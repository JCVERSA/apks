package defpackage;

public class sf5 implements cw0 {
    public byte[] b;

    public sf5(int i) {
        this.b = new byte[i];
    }

    public byte[] a() {
        return this.b;
    }

    public sf5(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public sf5(byte[] bArr, int i, int i2) {
        this(i2);
        System.arraycopy(bArr, i, this.b, 0, i2);
    }
}
