package androidx.compose.ui.semantics;

import androidx.compose.ui.node.i1;
import kotlin.jvm.functions.Function1;

public final class c extends androidx.compose.ui.f.c implements i1 {

    private boolean f5647n;

    private boolean f5648o;

    private Function1 f5649p;

    public c(boolean z10, boolean z11, Function1 function1) {
        this.f5647n = z10;
        this.f5648o = z11;
        this.f5649p = function1;
    }

    public final void C1(boolean z10) {
        this.f5647n = z10;
    }

    public final void D1(Function1 function1) {
        this.f5649p = function1;
    }

    @Override
    public boolean O() {
        return this.f5648o;
    }

    @Override
    public void Q0(n nVar) {
        this.f5649p.invoke(nVar);
    }

    @Override
    public boolean V0() {
        return this.f5647n;
    }
}
