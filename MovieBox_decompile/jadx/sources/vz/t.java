package vz;

public abstract class t {

    protected final int f74015a;

    protected t f74016b;

    public t(int i10) {
        this(i10, null);
    }

    public abstract void a();

    public abstract void b(String str, int i10, String... strArr);

    public abstract void c(String str);

    public abstract void d(String str, int i10, String... strArr);

    public abstract void e(String str);

    public abstract void f(String str, String... strArr);

    public abstract void g(String str, int i10, String str2);

    public abstract void h(String str);

    public t(int i10, t tVar) {
        if (i10 != 393216 && i10 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f74015a = i10;
        this.f74016b = tVar;
    }
}
