package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotMutableFloatStateImpl extends androidx.compose.runtime.snapshots.d0 implements c1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        private float f3356c;

        public a(float f10) {
            this.f3356c = f10;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
            this.f3356c = ((a) e0Var).f3356c;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3356c);
        }

        public final float i() {
            return this.f3356c;
        }

        public final void j(float f10) {
            this.f3356c = f10;
        }
    }

    public SnapshotMutableFloatStateImpl(float f10) {
        a aVar = new a(f10);
        if (androidx.compose.runtime.snapshots.j.f3695e.e()) {
            a aVar2 = new a(f10);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public Function1<Float, Unit> component2() {
        return new Function1<Float, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).floatValue());
                return Unit.f64096a;
            }

            public final void invoke(float f10) {
                SnapshotMutableFloatStateImpl.this.setFloatValue(f10);
            }
        };
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override
    public float getFloatValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override
    public q2 getPolicy() {
        return r2.j();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override
    public void setFloatValue(float f10) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() == f10) {
            return;
        }
        a aVar2 = this.next;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
            ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(f10);
            Unit unit = Unit.f64096a;
        }
        SnapshotKt.Q(jVarC, this);
    }

    public String toString() {
        return "MutableFloatState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }

    public Float m90component1() {
        return Float.valueOf(getFloatValue());
    }
}
