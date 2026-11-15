package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotMutableDoubleStateImpl extends androidx.compose.runtime.snapshots.d0 implements a1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        private double f3355c;

        public a(double d10) {
            this.f3355c = d10;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
            this.f3355c = ((a) e0Var).f3355c;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3355c);
        }

        public final double i() {
            return this.f3355c;
        }

        public final void j(double d10) {
            this.f3355c = d10;
        }
    }

    public SnapshotMutableDoubleStateImpl(double d10) {
        a aVar = new a(d10);
        if (androidx.compose.runtime.snapshots.j.f3695e.e()) {
            a aVar2 = new a(d10);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public Function1<Double, Unit> component2() {
        return new Function1<Double, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).doubleValue());
                return Unit.f64096a;
            }

            public final void invoke(double d10) {
                SnapshotMutableDoubleStateImpl.this.setDoubleValue(d10);
            }
        };
    }

    @Override
    public double getDoubleValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override
    public q2 getPolicy() {
        return r2.j();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override
    public void setDoubleValue(double d10) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() == d10) {
            return;
        }
        a aVar2 = this.next;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
            ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(d10);
            Unit unit = Unit.f64096a;
        }
        SnapshotKt.Q(jVarC, this);
    }

    public String toString() {
        return "MutableDoubleState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }

    public Double m89component1() {
        return Double.valueOf(getDoubleValue());
    }
}
