package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;

final class d0 extends androidx.compose.ui.f.c implements androidx.compose.ui.node.p {

    private Function1 f4866n;

    public d0(Function1 function1) {
        this.f4866n = function1;
    }

    public final void C1(Function1 function1) {
        this.f4866n = function1;
    }

    @Override
    public void v(l lVar) {
        this.f4866n.invoke(lVar);
    }
}
