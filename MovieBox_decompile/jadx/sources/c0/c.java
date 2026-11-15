package c0;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c implements b {

    private final Function1 f16373a;

    private final i1 f16374b;

    public c(int i10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, function1);
    }

    @Override
    public int a() {
        return ((a) this.f16374b.getValue()).i();
    }

    public void b(int i10) {
        this.f16374b.setValue(a.c(i10));
    }

    private c(int i10, Function1 function1) {
        this.f16373a = function1;
        this.f16374b = u2.c(a.c(i10), null, 2, null);
    }
}
