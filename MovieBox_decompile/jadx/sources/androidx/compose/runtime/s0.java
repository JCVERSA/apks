package androidx.compose.runtime;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class s0 implements g3 {

    private final Lazy f3574a;

    public s0(Function0 function0) {
        this.f3574a = LazyKt.b(function0);
    }

    private final Object b() {
        return this.f3574a.getValue();
    }

    @Override
    public Object a(n1 n1Var) {
        return b();
    }
}
