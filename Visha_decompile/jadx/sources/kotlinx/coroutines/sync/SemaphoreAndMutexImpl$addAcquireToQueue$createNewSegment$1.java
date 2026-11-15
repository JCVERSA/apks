package kotlinx.coroutines.sync;

import defpackage.s74;
import defpackage.wb9;
import defpackage.xb9;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public class SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 extends FunctionReferenceImpl implements s74 {
    public static final SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 INSTANCE = new SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1();

    public SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1() {
        super(2, wb9.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    public final xb9 invoke(long j, xb9 xb9Var) {
        return wb9.h(j, xb9Var);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj).longValue(), (xb9) obj2);
    }
}
