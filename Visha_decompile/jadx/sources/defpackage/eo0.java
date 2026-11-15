package defpackage;

public abstract class eo0 {
    public final hg a = new hg();
    public int b;

    public final void a(byte[] bArr) {
        y45.j(bArr, "array");
        synchronized (this) {
            try {
                if (this.b + bArr.length < oh.a) {
                    this.b += bArr.length / 2;
                    this.a.addLast(bArr);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final byte[] b(int i) {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.a.r();
            if (bArr != null) {
                this.b -= bArr.length / 2;
            } else {
                bArr = null;
            }
        }
        return bArr == null ? new byte[i] : bArr;
    }
}
