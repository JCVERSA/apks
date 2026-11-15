package androidx.compose.ui.node;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public abstract class l0 implements androidx.compose.ui.f.b {
    public abstract androidx.compose.ui.f.c a();

    @Override
    public Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override
    public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    public abstract void i(androidx.compose.ui.f.c cVar);
}
