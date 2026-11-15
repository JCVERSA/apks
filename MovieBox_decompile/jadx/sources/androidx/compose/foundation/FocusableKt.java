package androidx.compose.foundation;

import androidx.compose.ui.node.l0;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.y0;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class FocusableKt {

    private static final y0 f2283a;

    private static final FocusableKt$FocusableInNonTouchModeElement$1 f2284b;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.FocusableKt$FocusableInNonTouchModeElement$1] */
    static {
        f2283a = new y0(InspectableValueKt.b() ? new Function1<z0, Unit>() {
            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("focusGroup");
            }
        } : InspectableValueKt.a());
        f2284b = new l0() {
            public boolean equals(Object other) {
                return this == other;
            }

            public int hashCode() {
                return r.a(this);
            }

            @Override
            public q a() {
                return new q();
            }

            @Override
            public void i(q node) {
            }
        };
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, boolean z10, p.i iVar) {
        return fVar.e(z10 ? new FocusableElement(iVar) : androidx.compose.ui.f.f3869a);
    }
}
