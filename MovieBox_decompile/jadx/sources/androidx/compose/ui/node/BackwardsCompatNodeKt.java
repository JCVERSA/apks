package androidx.compose.ui.node;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class BackwardsCompatNodeKt {

    private static final a f4912a = new a();

    private static final Function1 f4913b = new Function1<BackwardsCompatNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((BackwardsCompatNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(BackwardsCompatNode backwardsCompatNode) {
            backwardsCompatNode.F1();
        }
    };

    private static final Function1 f4914c = new Function1<BackwardsCompatNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((BackwardsCompatNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(BackwardsCompatNode backwardsCompatNode) {
            backwardsCompatNode.I1();
        }
    };

    public static final class a implements androidx.compose.ui.modifier.k {
        a() {
        }

        @Override
        public Object P(androidx.compose.ui.modifier.c cVar) {
            return cVar.a().invoke();
        }
    }

    public static final boolean d(BackwardsCompatNode backwardsCompatNode) {
        androidx.compose.ui.f.c cVarO = g.m(backwardsCompatNode).e0().o();
        Intrinsics.f(cVarO, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode");
        return ((l1) cVarO).C1();
    }
}
