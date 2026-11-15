package androidx.compose.ui.graphics.vector;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class i {

    private Function1 f4533a;

    public i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void a(z.g gVar);

    public Function1 b() {
        return this.f4533a;
    }

    public final void c() {
        Function1 function1B = b();
        if (function1B != null) {
            function1B.invoke(this);
        }
    }

    public void d(Function1 function1) {
        this.f4533a = function1;
    }

    private i() {
    }
}
