package defpackage;

public abstract class xu0 {
    public final hg a = new hg();
    public int b;

    public final void a(char[] cArr) {
        y45.j(cArr, "array");
        synchronized (this) {
            try {
                if (this.b + cArr.length < oh.a) {
                    this.b += cArr.length;
                    this.a.addLast(cArr);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final char[] b(int i) {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) this.a.r();
            if (cArr != null) {
                this.b -= cArr.length;
            } else {
                cArr = null;
            }
        }
        return cArr == null ? new char[i] : cArr;
    }
}
