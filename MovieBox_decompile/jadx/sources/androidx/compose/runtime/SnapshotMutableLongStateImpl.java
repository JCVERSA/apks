package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotMutableLongStateImpl extends androidx.compose.runtime.snapshots.d0 implements g1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        private long f3358c;

        public a(long j10) {
            this.f3358c = j10;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
            this.f3358c = ((a) e0Var).f3358c;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3358c);
        }

        public final long i() {
            return this.f3358c;
        }

        public final void j(long j10) {
            this.f3358c = j10;
        }
    }

    public SnapshotMutableLongStateImpl(long j10) {
        a aVar = new a(j10);
        if (androidx.compose.runtime.snapshots.j.f3695e.e()) {
            a aVar2 = new a(j10);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public Function1<Long, Unit> component2() {
        return new Function1<Long, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return Unit.f64096a;
            }

            public final void invoke(long j10) {
                SnapshotMutableLongStateImpl.this.setLongValue(j10);
            }
        };
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override
    public long getLongValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override
    public q2 getPolicy() {
        return r2.j();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override
    public void setLongValue(long j10) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() != j10) {
            a aVar2 = this.next;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
                ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(j10);
                Unit unit = Unit.f64096a;
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    public String toString() {
        return "MutableLongState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }

    public Long m92component1() {
        return Long.valueOf(getLongValue());
    }
}
