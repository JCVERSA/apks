package androidx.compose.ui.input.key;

import android.view.KeyEvent;
import androidx.compose.ui.f;
import d0.e;
import kotlin.jvm.functions.Function1;

final class b extends f.c implements e {

    private Function1 f4620n;

    private Function1 f4621o;

    public b(Function1 function1, Function1 function2) {
        this.f4620n = function1;
        this.f4621o = function2;
    }

    public final void C1(Function1 function1) {
        this.f4620n = function1;
    }

    public final void D1(Function1 function1) {
        this.f4621o = function1;
    }

    @Override
    public boolean l0(KeyEvent keyEvent) {
        Function1 function1 = this.f4621o;
        if (function1 != null) {
            return ((Boolean) function1.invoke(d0.b.a(keyEvent))).booleanValue();
        }
        return false;
    }

    @Override
    public boolean s0(KeyEvent keyEvent) {
        Function1 function1 = this.f4620n;
        if (function1 != null) {
            return ((Boolean) function1.invoke(d0.b.a(keyEvent))).booleanValue();
        }
        return false;
    }
}
