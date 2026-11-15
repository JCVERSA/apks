package kotlinx.coroutines;

import defpackage.u74;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class JobSupport$onAwaitInternal$2 extends FunctionReferenceImpl implements u74 {
    public static final JobSupport$onAwaitInternal$2 INSTANCE = new JobSupport$onAwaitInternal$2();

    public JobSupport$onAwaitInternal$2() {
        super(3, JobSupport.class, "onAwaitInternalProcessResFunc", "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override
    public final Object invoke(JobSupport jobSupport, Object obj, Object obj2) {
        return jobSupport.J(obj, obj2);
    }
}
