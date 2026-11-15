package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.x;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.ui.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import p.h;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000*\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/f;", "invoke", "(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;", "androidx/compose/foundation/ClickableKt$clickableWithIndicationIfNeeded$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SelectableKt$selectableO2vRcR0$$inlined$clickableWithIndicationIfNeeded$1 extends Lambda implements Function3<f, i, Integer, f> {
    final boolean $enabled$inlined;
    final x $indication;
    final Function0 $onClick$inlined;
    final androidx.compose.ui.semantics.f $role$inlined;
    final boolean $selected$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectableKt$selectableO2vRcR0$$inlined$clickableWithIndicationIfNeeded$1(x xVar, boolean z10, boolean z11, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        super(3);
        this.$indication = xVar;
        this.$selected$inlined = z10;
        this.$enabled$inlined = z11;
        this.$role$inlined = fVar;
        this.$onClick$inlined = function0;
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((f) obj, (i) obj2, ((Number) obj3).intValue());
    }

    public final f invoke(f fVar, i iVar, int i10) {
        iVar.P(-1525724089);
        if (k.H()) {
            k.Q(-1525724089, i10, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:375)");
        }
        Object objY = iVar.y();
        if (objY == i.f3427a.a()) {
            objY = h.a();
            iVar.p(objY);
        }
        p.i iVar2 = (p.i) objY;
        f fVarE = IndicationKt.b(f.f3869a, iVar2, this.$indication).e(new SelectableElement(this.$selected$inlined, iVar2, null, this.$enabled$inlined, this.$role$inlined, this.$onClick$inlined, null));
        if (k.H()) {
            k.P();
        }
        iVar.K();
        return fVarE;
    }
}
