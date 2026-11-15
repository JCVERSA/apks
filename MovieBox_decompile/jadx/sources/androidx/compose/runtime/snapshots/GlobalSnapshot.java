package androidx.compose.runtime.snapshots;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

public final class GlobalSnapshot extends b {
    /* JADX WARN: Illegal instructions before constructor call */
    public GlobalSnapshot(int i10, SnapshotIdSet snapshotIdSet) {
        Function1<Object, Unit> function1;
        synchronized (SnapshotKt.I()) {
            final List list = SnapshotKt.f3621i;
            function1 = (Function1) CollectionsKt.G0(list);
            function1 = function1 == null ? new Function1<Object, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m95invoke(obj);
                    return Unit.f64096a;
                }

                public final void m95invoke(Object obj) {
                    List<Function1<Object, Unit>> list2 = list;
                    int size = list2.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        list2.get(i11).invoke(obj);
                    }
                }
            } : function1;
        }
        super(i10, snapshotIdSet, null, function1);
    }

    @Override
    public k C() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }

    @Override
    public b Q(final Function1 function1, final Function1 function2) {
        return (b) SnapshotKt.b0(new Function1<SnapshotIdSet, b>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final b invoke(SnapshotIdSet snapshotIdSet) {
                int i10;
                synchronized (SnapshotKt.I()) {
                    i10 = SnapshotKt.f3617e;
                    SnapshotKt.f3617e = i10 + 1;
                }
                return new b(i10, snapshotIdSet, function1, function2);
            }
        });
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
    public void d() {
        synchronized (SnapshotKt.I()) {
            q();
            Unit unit = Unit.f64096a;
        }
    }

    @Override
    public void o() {
        SnapshotKt.B();
    }

    @Override
    public j x(final Function1 function1) {
        return SnapshotKt.b0(new Function1<SnapshotIdSet, g>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final g invoke(SnapshotIdSet snapshotIdSet) {
                int i10;
                synchronized (SnapshotKt.I()) {
                    i10 = SnapshotKt.f3617e;
                    SnapshotKt.f3617e = i10 + 1;
                }
                return new g(i10, snapshotIdSet, function1);
            }
        });
    }
}
