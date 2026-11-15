package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotMutableIntStateImpl extends androidx.compose.runtime.snapshots.d0 implements e1, androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        private int f3357c;

        public a(int i10) {
            this.f3357c = i10;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
            this.f3357c = ((a) e0Var).f3357c;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3357c);
        }

        public final int i() {
            return this.f3357c;
        }

        public final void j(int i10) {
            this.f3357c = i10;
        }
    }

    public SnapshotMutableIntStateImpl(int i10) {
        a aVar = new a(i10);
        if (androidx.compose.runtime.snapshots.j.f3695e.e()) {
            a aVar2 = new a(i10);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public Function1<Integer, Unit> component2() {
        return new Function1<Integer, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return Unit.f64096a;
            }

            public final void invoke(int i10) {
                SnapshotMutableIntStateImpl.this.setIntValue(i10);
            }
        };
    }

    @JvmName
    public final int getDebuggerDisplayValue() {
        return ((a) SnapshotKt.F(this.next)).i();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override
    public int getIntValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override
    public q2 getPolicy() {
        return r2.j();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        if (((a) e0Var2).i() == ((a) e0Var3).i()) {
            return e0Var2;
        }
        return null;
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        this.next = (a) e0Var;
    }

    @Override
    public void setIntValue(int i10) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (aVar.i() != i10) {
            a aVar2 = this.next;
            SnapshotKt.J();
            synchronized (SnapshotKt.I()) {
                jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
                ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(i10);
                Unit unit = Unit.f64096a;
            }
            SnapshotKt.Q(jVarC, this);
        }
    }

    public String toString() {
        return "MutableIntState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }

    public Integer m91component1() {
        return Integer.valueOf(getIntValue());
    }

    public static void getDebuggerDisplayValue$annotations() {
    }
}
