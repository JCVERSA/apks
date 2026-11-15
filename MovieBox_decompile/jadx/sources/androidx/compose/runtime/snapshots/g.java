package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

public final class g extends j {

    private final Function1 f3678g;

    private int f3679h;

    public g(int i10, SnapshotIdSet snapshotIdSet, Function1 function1) {
        super(i10, snapshotIdSet, null);
        this.f3678g = function1;
        this.f3679h = 1;
    }

    @Override
    public Function1 h() {
        return this.f3678g;
    }

    @Override
    public void d() {
        if (e()) {
            return;
        }
        n(this);
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
    public void m(j jVar) {
        this.f3679h++;
    }

    @Override
    public void n(j jVar) {
        int i10 = this.f3679h - 1;
        this.f3679h = i10;
        if (i10 == 0) {
            b();
        }
    }

    @Override
    public void p(c0 c0Var) {
        SnapshotKt.Z();
        throw new KotlinNothingValueException();
    }

    @Override
    public j x(Function1 function1) {
        SnapshotKt.g0(this);
        return new d(f(), g(), SnapshotKt.L(function1, h(), false, 4, null), this);
    }

    @Override
    public void o() {
    }
}
