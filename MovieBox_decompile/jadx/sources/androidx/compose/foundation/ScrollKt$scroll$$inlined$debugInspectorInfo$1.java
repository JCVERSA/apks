package androidx.compose.foundation;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ScrollKt$scroll$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final androidx.compose.foundation.gestures.g $flingBehavior$inlined;
    final boolean $isScrollable$inlined;
    final boolean $isVertical$inlined;
    final boolean $reverseScrolling$inlined;
    final h0 $state$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollKt$scroll$$inlined$debugInspectorInfo$1(h0 h0Var, boolean z10, androidx.compose.foundation.gestures.g gVar, boolean z11, boolean z12) {
        super(1);
        this.$reverseScrolling$inlined = z10;
        this.$flingBehavior$inlined = gVar;
        this.$isScrollable$inlined = z11;
        this.$isVertical$inlined = z12;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f64096a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("scroll");
        z0Var.a().b("state", null);
        z0Var.a().b("reverseScrolling", Boolean.valueOf(this.$reverseScrolling$inlined));
        z0Var.a().b("flingBehavior", this.$flingBehavior$inlined);
        z0Var.a().b("isScrollable", Boolean.valueOf(this.$isScrollable$inlined));
        z0Var.a().b("isVertical", Boolean.valueOf(this.$isVertical$inlined));
    }
}
