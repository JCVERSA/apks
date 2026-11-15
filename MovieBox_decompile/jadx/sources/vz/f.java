package vz;

public abstract class f {

    protected final int f73887a;

    protected f f73888b;

    public f(int i10) {
        this(i10, null);
    }

    public abstract void a(int i10, int i11, String str, String str2, String str3, String[] strArr);

    public abstract a b(String str, boolean z10);

    public abstract void c(c cVar);

    public abstract void d();

    public abstract l e(int i10, String str, String str2, String str3, Object obj);

    public abstract void f(String str, String str2, String str3, int i10);

    public abstract r g(int i10, String str, String str2, String str3, String[] strArr);

    public abstract t h(String str, int i10, String str2);

    public abstract void i(String str);

    public abstract void j(String str);

    public abstract void k(String str, String str2, String str3);

    public abstract void l(String str, String str2);

    public abstract a m(int i10, z zVar, String str, boolean z10);

    public f(int i10, f fVar) {
        if (i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f73887a = i10;
        this.f73888b = fVar;
    }
}
