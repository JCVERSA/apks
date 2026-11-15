package defpackage;

public final class v0h extends s2h {
    public final byte[] b;
    public int c;
    public int d;
    public int e;

    public v0h(byte[] bArr, int i, int i2, boolean z, xzg xzgVar) {
        super(null);
        this.e = Integer.MAX_VALUE;
        this.b = bArr;
        this.c = 0;
    }

    public final int a(int i) {
        int i2 = this.e;
        this.e = 0;
        int i3 = this.c + this.d;
        this.c = i3;
        if (i3 > 0) {
            this.d = i3;
            this.c = 0;
        } else {
            this.d = 0;
        }
        return i2;
    }
}
