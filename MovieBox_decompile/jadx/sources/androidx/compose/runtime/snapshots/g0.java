package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

public final class g0 extends b {

    private final b f3680s;

    private final boolean f3681t;

    private final boolean f3682u;

    private Function1 f3683v;

    private Function1 f3684w;

    private final long f3685x;

    public g0(b bVar, Function1 function1, Function1 function2, boolean z10, boolean z11) {
        Function1 function1K;
        Function1 function1H;
        super(0, SnapshotIdSet.f3607e.a(), SnapshotKt.K(function1, (bVar == null || (function1H = bVar.h()) == null) ? ((GlobalSnapshot) SnapshotKt.f3622j.get()).h() : function1H, z10), SnapshotKt.M(function2, (bVar == null || (function1K = bVar.k()) == null) ? ((GlobalSnapshot) SnapshotKt.f3622j.get()).k() : function1K));
        this.f3680s = bVar;
        this.f3681t = z10;
        this.f3682u = z11;
        this.f3683v = super.h();
        this.f3684w = super.k();
        this.f3685x = androidx.compose.runtime.b.a();
    }

    private final b T() {
        b bVar = this.f3680s;
        return bVar == null ? (b) SnapshotKt.f3622j.get() : bVar;
    }

    @Override
    public k C() {
        return T().C();
    }

    @Override
    public MutableScatterSet E() {
        return T().E();
    }

    @Override
    public Function1 h() {
        return this.f3683v;
    }

    @Override
    public void P(MutableScatterSet mutableScatterSet) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override
    public b Q(Function1 function1, Function1 function2) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        Function1 function1M = SnapshotKt.M(function2, k());
        return !this.f3681t ? new g0(T().Q(null, function1M), function1L, function1M, false, true) : T().Q(function1L, function1M);
    }

    public final long U() {
        return this.f3685x;
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

    public void X(Function1 function1) {
        this.f3683v = function1;
    }

    public void Y(Function1 function1) {
        this.f3684w = function1;
    }

    @Override
    public void d() {
        b bVar;
        t(true);
        if (!this.f3682u || (bVar = this.f3680s) == null) {
            return;
        }
        bVar.d();
    }

    @Override
    public int f() {
        return T().f();
    }

    @Override
    public SnapshotIdSet g() {
        return T().g();
    }

    @Override
    public boolean i() {
        return T().i();
    }

    @Override
    public int j() {
        return T().j();
    }

    @Override
    public Function1 k() {
        return this.f3684w;
    }

    @Override
    public void o() {
        T().o();
    }

    @Override
    public void p(c0 c0Var) {
        T().p(c0Var);
    }

    @Override
    public void u(int i10) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override
    public void v(SnapshotIdSet snapshotIdSet) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override
    public void w(int i10) {
        T().w(i10);
    }

    @Override
    public j x(Function1 function1) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        return !this.f3681t ? SnapshotKt.D(T().x(null), function1L, true) : T().x(function1L);
    }
}
