package androidx.compose.ui.platform;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class AndroidComposeView$focusOwner$4 extends FunctionReferenceImpl implements Function0<Unit> {
    AndroidComposeView$focusOwner$4(Object obj) {
        super(0, obj, AndroidComposeView.class, "onClearFocusForOwner", "onClearFocusForOwner()V", 0);
    }

    @Override
    public Object invoke() {
        m154invoke();
        return Unit.f64096a;
    }

    public final void m154invoke() {
        ((AndroidComposeView) this.receiver).x();
    }
}
