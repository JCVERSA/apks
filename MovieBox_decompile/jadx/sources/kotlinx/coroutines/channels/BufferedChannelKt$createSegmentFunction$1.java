package kotlinx.coroutines.channels;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements Function2<Long, j, j> {
    public static final BufferedChannelKt$createSegmentFunction$1 INSTANCE = new BufferedChannelKt$createSegmentFunction$1();

    BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), (j) obj2);
    }

    public final j invoke(long j10, j jVar) {
        return BufferedChannelKt.x(j10, jVar);
    }
}
