package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

public abstract class p {

    private static final e0 f2004a = new e0(0);

    public static final o a() {
        e0 e0Var = f2004a;
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>");
        return e0Var;
    }

    public static final e0 b() {
        return new e0(0, 1, null);
    }

    public static final e0 c(int i10, Object obj, int i11, Object obj2, int i12, Object obj3) {
        e0 e0Var = new e0(0, 1, null);
        e0Var.t(i10, obj);
        e0Var.t(i11, obj2);
        e0Var.t(i12, obj3);
        return e0Var;
    }
}
