package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

final class d3 implements q2 {

    public static final d3 f3383a = new d3();

    private d3() {
    }

    @Override
    public Object a(Object obj, Object obj2, Object obj3) {
        return p2.a(this, obj, obj2, obj3);
    }

    @Override
    public boolean b(Object obj, Object obj2) {
        return Intrinsics.c(obj, obj2);
    }

    public String toString() {
        return "StructuralEqualityPolicy";
    }
}
