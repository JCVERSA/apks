package androidx.compose.ui.scrollcapture;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class ScrollCapture$onScrollCaptureSearch$1 extends AdaptedFunctionReference implements Function1<i, Unit> {
    ScrollCapture$onScrollCaptureSearch$1(Object obj) {
        super(1, obj, androidx.compose.runtime.collection.b.class, "add", "add(Ljava/lang/Object;)Z", 8);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((i) obj);
        return Unit.f64096a;
    }

    public final void invoke(i iVar) {
        ((androidx.compose.runtime.collection.b) this.receiver).b(iVar);
    }
}
