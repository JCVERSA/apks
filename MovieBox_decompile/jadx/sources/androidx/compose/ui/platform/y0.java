package androidx.compose.ui.platform;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public final class y0 extends a1 implements androidx.compose.ui.f.b {

    private final a f5572c;

    public final class a implements androidx.compose.ui.f.b {
        public a() {
        }

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
    }

    public y0(Function1 function1) {
        super(function1);
        this.f5572c = new a();
    }

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
}
