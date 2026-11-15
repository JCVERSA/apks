package androidx.compose.ui.draw;

import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import kotlin.jvm.functions.Function1;

public final class e extends androidx.compose.ui.f.c implements n {

    private Function1 f3861n;

    public e(Function1 function1) {
        this.f3861n = function1;
    }

    public final void C1(Function1 function1) {
        this.f3861n = function1;
    }

    @Override
    public void n(z.c cVar) {
        this.f3861n.invoke(cVar);
        cVar.X0();
    }

    @Override
    public void w0() {
        m.a(this);
    }
}
