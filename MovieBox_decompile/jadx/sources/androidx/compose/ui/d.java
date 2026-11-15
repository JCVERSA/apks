package androidx.compose.ui;

import androidx.compose.ui.platform.a1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

class d extends a1 implements f.b {

    private final Function3 f3823c;

    public d(Function1 function1, Function3 function3) {
        super(function1);
        this.f3823c = function3;
    }

    public final Function3 a() {
        return this.f3823c;
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return g.a(this, function1);
    }

    @Override
    public f e(f fVar) {
        return e.a(this, fVar);
    }
}
