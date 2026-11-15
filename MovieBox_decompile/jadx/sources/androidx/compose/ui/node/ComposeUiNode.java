package androidx.compose.ui.node;

import androidx.compose.ui.platform.o2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

public interface ComposeUiNode {

    public static final Companion f4915c1 = Companion.f4916a;

    public static final class Companion {

        static final Companion f4916a = new Companion();

        private static final Function0 f4917b = LayoutNode.K.a();

        private static final Function0 f4918c = new Function0<LayoutNode>() {
            @Override
            public final LayoutNode invoke() {
                return new LayoutNode(true, 0, 2, null);
            }
        };

        private static final Function2 f4919d = new Function2<ComposeUiNode, androidx.compose.ui.f, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.ui.f) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.ui.f fVar) {
                composeUiNode.h(fVar);
            }
        };

        private static final Function2 f4920e = new Function2<ComposeUiNode, o0.e, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (o0.e) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, o0.e eVar) {
                composeUiNode.b(eVar);
            }
        };

        private static final Function2 f4921f = new Function2<ComposeUiNode, androidx.compose.runtime.s, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.runtime.s) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.runtime.s sVar) {
                composeUiNode.i(sVar);
            }
        };

        private static final Function2 f4922g = new Function2<ComposeUiNode, androidx.compose.ui.layout.t, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.ui.layout.t) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.ui.layout.t tVar) {
                composeUiNode.g(tVar);
            }
        };

        private static final Function2 f4923h = new Function2<ComposeUiNode, LayoutDirection, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (LayoutDirection) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
                composeUiNode.a(layoutDirection);
            }
        };

        private static final Function2 f4924i = new Function2<ComposeUiNode, o2, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (o2) obj2);
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, o2 o2Var) {
                composeUiNode.e(o2Var);
            }
        };

        private static final Function2 f4925j = new Function2<ComposeUiNode, Integer, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, ((Number) obj2).intValue());
                return Unit.f64096a;
            }

            public final void invoke(ComposeUiNode composeUiNode, int i10) {
                composeUiNode.c(i10);
            }
        };

        private Companion() {
        }

        public final Function0 a() {
            return f4917b;
        }

        public final Function2 b() {
            return f4925j;
        }

        public final Function2 c() {
            return f4922g;
        }

        public final Function2 d() {
            return f4919d;
        }

        public final Function2 e() {
            return f4921f;
        }
    }

    void a(LayoutDirection layoutDirection);

    void b(o0.e eVar);

    void c(int i10);

    void e(o2 o2Var);

    void g(androidx.compose.ui.layout.t tVar);

    void h(androidx.compose.ui.f fVar);

    void i(androidx.compose.runtime.s sVar);
}
