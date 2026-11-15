package androidx.compose.foundation;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class ClickableNode extends AbstractClickableNode {
    public ClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, b0Var, z10, str, fVar, function0);
    }

    static Object b2(final ClickableNode clickableNode, androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation) {
        Object objH = TapGestureDetectorKt.h(e0Var, new ClickableNode$clickPointerInput$2(clickableNode, null), new Function1<y.g, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m22invokek4lQ0M(((y.g) obj).v());
                return Unit.f64096a;
            }

            public final void m22invokek4lQ0M(long j10) {
                if (this.this$0.U1()) {
                    this.this$0.V1().invoke();
                }
            }
        }, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    @Override
    public Object P1(androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation) {
        return b2(this, e0Var, continuation);
    }

    public final void c2(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        a2(iVar, b0Var, z10, str, fVar, function0);
    }

    private ClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        super(iVar, b0Var, z10, str, fVar, function0, null);
    }
}
