package androidx.datastore.core;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;

public final class i {

    private final x0 f8306a;

    public i() {
        y yVar = y.f8318b;
        Intrinsics.f(yVar, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>");
        this.f8306a = i1.a(yVar);
    }

    public final v a() {
        return (v) this.f8306a.getValue();
    }

    public final kotlinx.coroutines.flow.a b() {
        return this.f8306a;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    public final v c(v newState) {
        Object value;
        v vVar;
        Intrinsics.h(newState, "newState");
        x0 x0Var = this.f8306a;
        do {
            value = x0Var.getValue();
            vVar = (v) value;
            if (vVar instanceof r ? true : Intrinsics.c(vVar, y.f8318b)) {
                vVar = newState;
            } else if (vVar instanceof e) {
                if (newState.a() > vVar.a()) {
                    vVar = newState;
                }
            } else if (!(vVar instanceof k)) {
                throw new NoWhenBranchMatchedException();
            }
        } while (!x0Var.e(value, vVar));
        return vVar;
    }
}
