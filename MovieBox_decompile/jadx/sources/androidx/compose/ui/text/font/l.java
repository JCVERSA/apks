package androidx.compose.ui.text.font;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

public final class l {

    public static final a f5824c = new a(null);

    public static final int f5825d = 8;

    private static final m f5826e = new m();

    private static final j0 f5827f = new b(j0.f64923l1);

    private final e f5828a;

    private n0 f5829b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public e0 a(d0 d0Var, u uVar, Function1 function1, Function1 function2) {
        d0Var.c();
        return null;
    }

    public l(e eVar, CoroutineContext coroutineContext) {
        this.f5828a = eVar;
        this.f5829b = o0.a(f5827f.plus(androidx.compose.ui.text.platform.j.a()).plus(coroutineContext).plus(l2.a((t1) coroutineContext.get(t1.f65027m1))));
    }

    public l(e eVar, CoroutineContext coroutineContext, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new e() : eVar, (i10 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext);
    }

    public static final class b extends AbstractCoroutineContextElement implements j0 {
        public b(j0.a aVar) {
            super(aVar);
        }

        @Override
        public void m(CoroutineContext coroutineContext, Throwable th2) {
        }
    }
}
