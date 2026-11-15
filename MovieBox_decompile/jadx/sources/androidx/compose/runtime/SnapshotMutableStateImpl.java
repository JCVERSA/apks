package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotMutableStateImpl extends androidx.compose.runtime.snapshots.d0 implements androidx.compose.runtime.snapshots.r {
    public static final int $stable = 0;
    private a next;
    private final q2 policy;

    private static final class a extends androidx.compose.runtime.snapshots.e0 {

        private Object f3359c;

        public a(Object obj) {
            this.f3359c = obj;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>");
            this.f3359c = ((a) e0Var).f3359c;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a(this.f3359c);
        }

        public final Object i() {
            return this.f3359c;
        }

        public final void j(Object obj) {
            this.f3359c = obj;
        }
    }

    public SnapshotMutableStateImpl(Object obj, q2 q2Var) {
        this.policy = q2Var;
        a aVar = new a(obj);
        if (androidx.compose.runtime.snapshots.j.f3695e.e()) {
            a aVar2 = new a(obj);
            aVar2.h(1);
            aVar.g(aVar2);
        }
        this.next = aVar;
    }

    public Object component1() {
        return getValue();
    }

    public Function1<Object, Unit> component2() {
        return new Function1<Object, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m93invoke(obj);
                return Unit.f64096a;
            }

            public final void m93invoke(Object obj) {
                SnapshotMutableStateImpl.this.setValue(obj);
            }
        };
    }

    @JvmName
    public final Object getDebuggerDisplayValue() {
        return ((a) SnapshotKt.F(this.next)).i();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.next;
    }

    @Override
    public q2 getPolicy() {
        return this.policy;
    }

    @Override
    public Object getValue() {
        return ((a) SnapshotKt.X(this.next, this)).i();
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 mergeRecords(androidx.compose.runtime.snapshots.e0 e0Var, androidx.compose.runtime.snapshots.e0 e0Var2, androidx.compose.runtime.snapshots.e0 e0Var3) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar = (a) e0Var;
        Intrinsics.f(e0Var2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar2 = (a) e0Var2;
        Intrinsics.f(e0Var3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        a aVar3 = (a) e0Var3;
        if (getPolicy().b(aVar2.i(), aVar3.i())) {
            return e0Var2;
        }
        Object objA = getPolicy().a(aVar.i(), aVar2.i(), aVar3.i());
        if (objA == null) {
            return null;
        }
        androidx.compose.runtime.snapshots.e0 e0VarD = aVar3.d();
        Intrinsics.f(e0VarD, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.mergeRecords$lambda$4>");
        ((a) e0VarD).j(objA);
        return e0VarD;
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        this.next = (a) e0Var;
    }

    @Override
    public void setValue(Object obj) {
        androidx.compose.runtime.snapshots.j jVarC;
        a aVar = (a) SnapshotKt.F(this.next);
        if (getPolicy().b(aVar.i(), obj)) {
            return;
        }
        a aVar2 = this.next;
        SnapshotKt.J();
        synchronized (SnapshotKt.I()) {
            jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
            ((a) SnapshotKt.S(aVar2, this, jVarC, aVar)).j(obj);
            Unit unit = Unit.f64096a;
        }
        SnapshotKt.Q(jVarC, this);
    }

    public String toString() {
        return "MutableState(value=" + ((a) SnapshotKt.F(this.next)).i() + ")@" + hashCode();
    }

    public static void getDebuggerDisplayValue$annotations() {
    }

    public static void getValue$annotations() {
    }
}
