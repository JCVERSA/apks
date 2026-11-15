package androidx.compose.runtime;

public final class k1 implements f {

    private final f f3488a;

    private final int f3489b;

    private int f3490c;

    public k1(f fVar, int i10) {
        this.f3488a = fVar;
        this.f3489b = i10;
    }

    @Override
    public void a(int i10, int i11) {
        this.f3488a.a(i10 + (this.f3490c == 0 ? this.f3489b : 0), i11);
    }

    @Override
    public void b(int i10, int i11, int i12) {
        int i13 = this.f3490c == 0 ? this.f3489b : 0;
        this.f3488a.b(i10 + i13, i11 + i13, i12);
    }

    @Override
    public void c(int i10, Object obj) {
        this.f3488a.c(i10 + (this.f3490c == 0 ? this.f3489b : 0), obj);
    }

    @Override
    public void clear() {
        k.r("Clear is not valid on OffsetApplier");
    }

    @Override
    public Object d() {
        return this.f3488a.d();
    }

    @Override
    public void e() {
        e.b(this);
    }

    @Override
    public void f(int i10, Object obj) {
        this.f3488a.f(i10 + (this.f3490c == 0 ? this.f3489b : 0), obj);
    }

    @Override
    public void g(Object obj) {
        this.f3490c++;
        this.f3488a.g(obj);
    }

    @Override
    public void h() {
        e.a(this);
    }

    @Override
    public void i() {
        if (!(this.f3490c > 0)) {
            k.r("OffsetApplier up called with no corresponding down");
        }
        this.f3490c--;
        this.f3488a.i();
    }
}
