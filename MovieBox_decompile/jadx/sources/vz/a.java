package vz;

public abstract class a {

    protected final int f73864a;

    protected a f73865b;

    public a(int i10) {
        this(i10, null);
    }

    public abstract void a(String str, Object obj);

    public abstract a b(String str, String str2);

    public abstract a c(String str);

    public abstract void d();

    public abstract void e(String str, String str2, String str3);

    public a(int i10, a aVar) {
        if (i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f73864a = i10;
        this.f73865b = aVar;
    }
}
