package kotlinx.serialization.json.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class JsonElementMarker$origin$1 extends FunctionReferenceImpl implements Function2<kotlinx.serialization.descriptors.f, Integer, Boolean> {
    JsonElementMarker$origin$1(Object obj) {
        super(2, obj, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
    }

    public final Boolean invoke(kotlinx.serialization.descriptors.f p10, int i10) {
        Intrinsics.h(p10, "p0");
        return Boolean.valueOf(((JsonElementMarker) this.receiver).e(p10, i10));
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke((kotlinx.serialization.descriptors.f) obj, ((Number) obj2).intValue());
    }
}
