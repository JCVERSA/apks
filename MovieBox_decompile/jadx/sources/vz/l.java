package vz;

public abstract class l {

    protected final int f73939a;

    protected l f73940b;

    public l(int i10) {
        this(i10, null);
    }

    public abstract a a(String str, boolean z10);

    public abstract void b(c cVar);

    public abstract void c();

    public abstract a d(int i10, z zVar, String str, boolean z10);

    public l(int i10, l lVar) {
        if (i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f73939a = i10;
        this.f73940b = lVar;
    }
}
