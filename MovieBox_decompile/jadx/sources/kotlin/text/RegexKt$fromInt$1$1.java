package kotlin.text;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RegexKt$fromInt$1$1 implements Function1<Enum<Object>, Boolean> {

    final int f64588a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Boolean invoke(Enum r10) {
        d dVar = (d) r10;
        return Boolean.valueOf((this.f64588a & dVar.getMask()) == dVar.getValue());
    }
}
