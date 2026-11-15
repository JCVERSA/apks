package kotlinx.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class JobSupport$onAwaitInternal$1 extends FunctionReferenceImpl implements Function3<JobSupport, kotlinx.coroutines.selects.f, Object, Unit> {
    public static final JobSupport$onAwaitInternal$1 INSTANCE = new JobSupport$onAwaitInternal$1();

    JobSupport$onAwaitInternal$1() {
        super(3, JobSupport.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj2);
        invoke((JobSupport) obj, (kotlinx.coroutines.selects.f) null, obj3);
        return Unit.f64096a;
    }

    public final void invoke(JobSupport jobSupport, kotlinx.coroutines.selects.f fVar, Object obj) {
        jobSupport.J(fVar, obj);
    }
}
