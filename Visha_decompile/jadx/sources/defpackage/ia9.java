package defpackage;

public class ia9 {
    public final byte[] a;
    public final byte[] b;
    public final sb2 c;
    public int d;
    public int e;

    public ia9(byte[] bArr, byte[] bArr2, sb2 sb2Var) {
        this.a = bArr;
        this.b = bArr2;
        this.c = sb2Var;
    }

    public void a(byte[] bArr, boolean z) {
        b(bArr, z, 0);
    }

    public void b(byte[] bArr, boolean z, int i) {
        c(bArr, i);
        if (z) {
            this.e++;
        }
    }

    public byte[] c(byte[] bArr, int i) {
        if (bArr.length - i < this.c.g()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        sb2 sb2Var = this.c;
        byte[] bArr2 = this.a;
        sb2Var.update(bArr2, 0, bArr2.length);
        this.c.b((byte) (this.d >>> 24));
        this.c.b((byte) (this.d >>> 16));
        this.c.b((byte) (this.d >>> 8));
        this.c.b((byte) this.d);
        this.c.b((byte) (this.e >>> 8));
        this.c.b((byte) this.e);
        this.c.b((byte) -1);
        sb2 sb2Var2 = this.c;
        byte[] bArr3 = this.b;
        sb2Var2.update(bArr3, 0, bArr3.length);
        this.c.a(bArr, i);
        return bArr;
    }

    public void d(int i) {
        this.e = i;
    }

    public void e(int i) {
        this.d = i;
    }
}
