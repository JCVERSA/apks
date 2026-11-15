package kotlinx.coroutines;

import defpackage.u74;
import defpackage.xa9;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class JobSupport$onJoin$1 extends FunctionReferenceImpl implements u74 {
    public static final JobSupport$onJoin$1 INSTANCE = new JobSupport$onJoin$1();

    public JobSupport$onJoin$1() {
        super(3, JobSupport.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((JobSupport) obj, (xa9) obj2, obj3);
        return zfb.a;
    }

    public final void invoke(JobSupport jobSupport, xa9 xa9Var, Object obj) {
        jobSupport.N(xa9Var, obj);
    }
}
