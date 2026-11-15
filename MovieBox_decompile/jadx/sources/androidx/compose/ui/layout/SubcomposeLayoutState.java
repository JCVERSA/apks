package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public final class SubcomposeLayoutState {

    public static final int f4843f = 8;

    private final p0 f4844a;

    private LayoutNodeSubcompositionsState f4845b;

    private final Function2 f4846c;

    private final Function2 f4847d;

    private final Function2 f4848e;

    public interface a {
        void a(Object obj, Function1 function1);

        int b();

        void c(int i10, long j10);

        void dispose();
    }

    public SubcomposeLayoutState(p0 p0Var) {
        this.f4844a = p0Var;
        this.f4846c = new Function2<LayoutNode, SubcomposeLayoutState, Unit>() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (SubcomposeLayoutState) obj2);
                return Unit.f64096a;
            }

            public final void invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
                SubcomposeLayoutState subcomposeLayoutState2 = this.this$0;
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateK0 = layoutNode.k0();
                if (layoutNodeSubcompositionsStateK0 == null) {
                    layoutNodeSubcompositionsStateK0 = new LayoutNodeSubcompositionsState(layoutNode, this.this$0.f4844a);
                    layoutNode.t1(layoutNodeSubcompositionsStateK0);
                }
                subcomposeLayoutState2.f4845b = layoutNodeSubcompositionsStateK0;
                this.this$0.h().y();
                this.this$0.h().G(this.this$0.f4844a);
            }
        };
        this.f4847d = new Function2<LayoutNode, androidx.compose.runtime.m, Unit>() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (androidx.compose.runtime.m) obj2);
                return Unit.f64096a;
            }

            public final void invoke(LayoutNode layoutNode, androidx.compose.runtime.m mVar) {
                this.this$0.h().F(mVar);
            }
        };
        this.f4848e = new Function2<LayoutNode, Function2<? super o0, ? super o0.b, ? extends v>, Unit>() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (Function2<? super o0, ? super o0.b, ? extends v>) obj2);
                return Unit.f64096a;
            }

            public final void invoke(LayoutNode layoutNode, Function2<? super o0, ? super o0.b, ? extends v> function2) {
                layoutNode.g(this.this$0.h().r(function2));
            }
        };
    }

    public final LayoutNodeSubcompositionsState h() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f4845b;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout");
    }

    public final void d() {
        h().w();
    }

    public final Function2 e() {
        return this.f4847d;
    }

    public final Function2 f() {
        return this.f4848e;
    }

    public final Function2 g() {
        return this.f4846c;
    }

    public final a i(Object obj, Function2 function2) {
        return h().D(obj, function2);
    }

    public SubcomposeLayoutState() {
        this(a0.f4851a);
    }
}
