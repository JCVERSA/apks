package androidx.room;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0<Unit> {
    RoomDatabase$closeBarrier$1(Object obj) {
        super(0, obj, RoomDatabase.class, "onClosed", "onClosed()V", 0);
    }

    @Override
    public Object invoke() {
        m196invoke();
        return Unit.f64096a;
    }

    public final void m196invoke() {
        ((RoomDatabase) this.receiver).U();
    }
}
