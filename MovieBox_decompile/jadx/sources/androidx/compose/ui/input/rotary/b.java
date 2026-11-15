package androidx.compose.ui.input.rotary;

import androidx.compose.ui.f;
import kotlin.jvm.functions.Function1;

final class b extends f.c implements f0.a {

    private Function1 f4781n;

    private Function1 f4782o;

    public b(Function1 function1, Function1 function2) {
        this.f4781n = function1;
        this.f4782o = function2;
    }

    public final void C1(Function1 function1) {
        this.f4781n = function1;
    }

    public final void D1(Function1 function1) {
        this.f4782o = function1;
    }

    @Override
    public boolean I0(f0.b bVar) {
        Function1 function1 = this.f4782o;
        if (function1 != null) {
            return ((Boolean) function1.invoke(bVar)).booleanValue();
        }
        return false;
    }

    @Override
    public boolean W0(f0.b bVar) {
        Function1 function1 = this.f4781n;
        if (function1 != null) {
            return ((Boolean) function1.invoke(bVar)).booleanValue();
        }
        return false;
    }
}
