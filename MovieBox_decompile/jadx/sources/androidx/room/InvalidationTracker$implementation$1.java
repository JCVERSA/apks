package androidx.room;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class InvalidationTracker$implementation$1 extends FunctionReferenceImpl implements Function1<Set<? extends Integer>, Unit> {
    InvalidationTracker$implementation$1(Object obj) {
        super(1, obj, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Set<Integer>) obj);
        return Unit.f64096a;
    }

    public final void invoke(Set<Integer> p10) {
        Intrinsics.h(p10, "p0");
        ((InvalidationTracker) this.receiver).r(p10);
    }
}
