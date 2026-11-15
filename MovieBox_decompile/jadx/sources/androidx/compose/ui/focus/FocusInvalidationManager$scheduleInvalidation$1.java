package androidx.compose.ui.focus;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class FocusInvalidationManager$scheduleInvalidation$1 extends FunctionReferenceImpl implements Function0<Unit> {
    FocusInvalidationManager$scheduleInvalidation$1(Object obj) {
        super(0, obj, FocusInvalidationManager.class, "invalidateNodes", "invalidateNodes()V", 0);
    }

    @Override
    public Object invoke() {
        m103invoke();
        return Unit.f64096a;
    }

    public final void m103invoke() {
        ((FocusInvalidationManager) this.receiver).c();
    }
}
