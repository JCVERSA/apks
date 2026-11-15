package androidx.compose.runtime;

final class o0 {

    private final RecomposeScopeImpl f3555a;

    private final int f3556b;

    private Object f3557c;

    public o0(RecomposeScopeImpl recomposeScopeImpl, int i10, Object obj) {
        this.f3555a = recomposeScopeImpl;
        this.f3556b = i10;
        this.f3557c = obj;
    }

    public final Object a() {
        return this.f3557c;
    }

    public final int b() {
        return this.f3556b;
    }

    public final RecomposeScopeImpl c() {
        return this.f3555a;
    }

    public final boolean d() {
        return this.f3555a.u(this.f3557c);
    }

    public final void e(Object obj) {
        this.f3557c = obj;
    }
}
