package androidx.compose.material;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class TextFieldDefaults$indicatorLinegv0btCI$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final q $colors$inlined;
    final boolean $enabled$inlined;
    final float $focusedIndicatorLineThickness$inlined;
    final p.g $interactionSource$inlined;
    final boolean $isError$inlined;
    final float $unfocusedIndicatorLineThickness$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldDefaults$indicatorLinegv0btCI$$inlined$debugInspectorInfo$1(boolean z10, boolean z11, p.g gVar, q qVar, float f10, float f11) {
        super(1);
        this.$enabled$inlined = z10;
        this.$isError$inlined = z11;
        this.$interactionSource$inlined = gVar;
        this.$focusedIndicatorLineThickness$inlined = f10;
        this.$unfocusedIndicatorLineThickness$inlined = f11;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f64096a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("indicatorLine");
        z0Var.a().b("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().b("isError", Boolean.valueOf(this.$isError$inlined));
        z0Var.a().b("interactionSource", this.$interactionSource$inlined);
        z0Var.a().b("colors", null);
        z0Var.a().b("focusedIndicatorLineThickness", o0.i.d(this.$focusedIndicatorLineThickness$inlined));
        z0Var.a().b("unfocusedIndicatorLineThickness", o0.i.d(this.$unfocusedIndicatorLineThickness$inlined));
    }
}
