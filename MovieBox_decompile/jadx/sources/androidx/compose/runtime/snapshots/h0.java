package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

public final class h0 extends j {

    private final j f3687g;

    private final boolean f3688h;

    private final boolean f3689i;

    private Function1 f3690j;

    private final Function1 f3691k;

    private final long f3692l;

    private final j f3693m;

    public h0(j jVar, Function1 function1, boolean z10, boolean z11) {
        Function1 function1H;
        super(0, SnapshotIdSet.f3607e.a(), null);
        this.f3687g = jVar;
        this.f3688h = z10;
        this.f3689i = z11;
        this.f3690j = SnapshotKt.K(function1, (jVar == null || (function1H = jVar.h()) == null) ? ((GlobalSnapshot) SnapshotKt.f3622j.get()).h() : function1H, z10);
        this.f3692l = androidx.compose.runtime.b.a();
        this.f3693m = this;
    }

    private final j A() {
        j jVar = this.f3687g;
        return jVar == null ? (j) SnapshotKt.f3622j.get() : jVar;
    }

    @Override
    public Function1 h() {
        return this.f3690j;
    }

    public final long C() {
        return this.f3692l;
    }

    @Override
    public Void m(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override
    public Void n(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public void F(Function1 function1) {
        this.f3690j = function1;
    }

    @Override
    public void d() {
        j jVar;
        t(true);
        if (!this.f3689i || (jVar = this.f3687g) == null) {
            return;
        }
        jVar.d();
    }

    @Override
    public int f() {
        return A().f();
    }

    @Override
    public SnapshotIdSet g() {
        return A().g();
    }

    @Override
    public boolean i() {
        return A().i();
    }

    @Override
    public Function1 k() {
        return this.f3691k;
    }

    @Override
    public void o() {
        A().o();
    }

    @Override
    public void p(c0 c0Var) {
        A().p(c0Var);
    }

    @Override
    public j x(Function1 function1) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        return !this.f3688h ? SnapshotKt.D(A().x(null), function1L, true) : A().x(function1L);
    }
}
