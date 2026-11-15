package androidx.compose.material;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final androidx.compose.foundation.gestures.f $draggableState$inlined;
    final boolean $enabled$inlined;
    final a3 $gestureEndAction$inlined;
    final p.i $interactionSource$inlined;
    final boolean $isRtl$inlined;
    final float $maxPx$inlined;
    final i1 $pressOffset$inlined;
    final a3 $rawOffset$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1(androidx.compose.foundation.gestures.f fVar, p.i iVar, float f10, boolean z10, a3 a3Var, a3 a3Var2, i1 i1Var, boolean z11) {
        super(1);
        this.$interactionSource$inlined = iVar;
        this.$maxPx$inlined = f10;
        this.$isRtl$inlined = z10;
        this.$rawOffset$inlined = a3Var;
        this.$gestureEndAction$inlined = a3Var2;
        this.$pressOffset$inlined = i1Var;
        this.$enabled$inlined = z11;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f64096a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("sliderTapModifier");
        z0Var.a().b("draggableState", null);
        z0Var.a().b("interactionSource", this.$interactionSource$inlined);
        z0Var.a().b("maxPx", Float.valueOf(this.$maxPx$inlined));
        z0Var.a().b("isRtl", Boolean.valueOf(this.$isRtl$inlined));
        z0Var.a().b("rawOffset", this.$rawOffset$inlined);
        z0Var.a().b("gestureEndAction", this.$gestureEndAction$inlined);
        z0Var.a().b("pressOffset", this.$pressOffset$inlined);
        z0Var.a().b("enabled", Boolean.valueOf(this.$enabled$inlined));
    }
}
