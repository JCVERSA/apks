package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.platform.z0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final Map $anchors$inlined;
    final boolean $enabled$inlined;
    final p.i $interactionSource$inlined;
    final Orientation $orientation$inlined;
    final f $resistance$inlined;
    final boolean $reverseDirection$inlined;
    final o $state$inlined;
    final Function2 $thresholds$inlined;
    final float $velocityThreshold$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1(o oVar, Map map, Orientation orientation, boolean z10, boolean z11, p.i iVar, Function2 function2, f fVar, float f10) {
        super(1);
        this.$anchors$inlined = map;
        this.$orientation$inlined = orientation;
        this.$enabled$inlined = z10;
        this.$reverseDirection$inlined = z11;
        this.$interactionSource$inlined = iVar;
        this.$thresholds$inlined = function2;
        this.$velocityThreshold$inlined = f10;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f64096a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("swipeable");
        z0Var.a().b("state", null);
        z0Var.a().b("anchors", this.$anchors$inlined);
        z0Var.a().b("orientation", this.$orientation$inlined);
        z0Var.a().b("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().b("reverseDirection", Boolean.valueOf(this.$reverseDirection$inlined));
        z0Var.a().b("interactionSource", this.$interactionSource$inlined);
        z0Var.a().b("thresholds", this.$thresholds$inlined);
        z0Var.a().b("resistance", null);
        z0Var.a().b("velocityThreshold", o0.i.d(this.$velocityThreshold$inlined));
    }
}
