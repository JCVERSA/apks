package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

abstract class s2 {

    private static final v2 f3575a = new v2();

    private static final v2 f3576b = new v2();

    public static final androidx.compose.runtime.collection.b b() {
        v2 v2Var = f3576b;
        androidx.compose.runtime.collection.b bVar = (androidx.compose.runtime.collection.b) v2Var.a();
        if (bVar != null) {
            return bVar;
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new a0[0], 0);
        v2Var.b(bVar2);
        return bVar2;
    }

    public static final a3 c(q2 q2Var, Function0 function0) {
        return new DerivedSnapshotState(function0, q2Var);
    }

    public static final a3 d(Function0 function0) {
        return new DerivedSnapshotState(function0, null);
    }
}
