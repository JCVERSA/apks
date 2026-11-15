package androidx.compose.foundation;

import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class t extends androidx.compose.ui.f.c implements m1 {

    public static final a f2879p = new a(null);

    public static final int f2880q = 8;

    private Function1 f2881n;

    private final Object f2882o = f2879p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public t(Function1 function1) {
        this.f2881n = function1;
    }

    public final void C1(androidx.compose.ui.layout.l lVar) {
        this.f2881n.invoke(lVar);
        t tVar = (t) n1.b(this);
        if (tVar != null) {
            tVar.C1(lVar);
        }
    }

    @Override
    public Object D() {
        return this.f2882o;
    }
}
