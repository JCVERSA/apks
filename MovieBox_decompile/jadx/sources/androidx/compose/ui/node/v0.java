package androidx.compose.ui.node;

import kotlin.jvm.functions.Function0;

public abstract class v0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(androidx.compose.ui.f.c cVar, Function0 function0) {
        ObserverNodeOwnerScope observerNodeOwnerScopeF1 = cVar.f1();
        if (observerNodeOwnerScopeF1 == null) {
            observerNodeOwnerScopeF1 = new ObserverNodeOwnerScope((u0) cVar);
            cVar.x1(observerNodeOwnerScopeF1);
        }
        g.n(cVar).getSnapshotObserver().i(observerNodeOwnerScopeF1, ObserverNodeOwnerScope.f5054b.a(), function0);
    }
}
