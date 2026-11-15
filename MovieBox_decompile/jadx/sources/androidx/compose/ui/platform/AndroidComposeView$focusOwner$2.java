package androidx.compose.ui.platform;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class AndroidComposeView$focusOwner$2 extends FunctionReferenceImpl implements Function2<androidx.compose.ui.focus.b, y.i, Boolean> {
    AndroidComposeView$focusOwner$2(Object obj) {
        super(2, obj, AndroidComposeView.class, "onRequestFocusForOwner", "onRequestFocusForOwner-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z", 0);
    }

    @Override
    public final Boolean invoke(androidx.compose.ui.focus.b bVar, y.i iVar) {
        return Boolean.valueOf(((AndroidComposeView) this.receiver).A(bVar, iVar));
    }
}
