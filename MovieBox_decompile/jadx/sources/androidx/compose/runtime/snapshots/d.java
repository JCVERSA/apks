package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

public final class d extends j {

    private final Function1 f3667g;

    private final j f3668h;

    public d(int i10, SnapshotIdSet snapshotIdSet, Function1 function1, j jVar) {
        super(i10, snapshotIdSet, null);
        this.f3667g = function1;
        this.f3668h = jVar;
        jVar.m(this);
    }

    @Override
    public Function1 h() {
        return this.f3667g;
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

    @Override
    public Void p(c0 c0Var) {
        SnapshotKt.Z();
        throw new KotlinNothingValueException();
    }

    @Override
    public d x(Function1 function1) {
        return new d(f(), g(), SnapshotKt.L(function1, h(), false, 4, null), this.f3668h);
    }

    @Override
    public void d() {
        if (e()) {
            return;
        }
        if (f() != this.f3668h.f()) {
            b();
        }
        this.f3668h.n(this);
        super.d();
    }

    @Override
    public boolean i() {
        return true;
    }

    @Override
    public Function1 k() {
        return null;
    }

    @Override
    public void o() {
    }
}
