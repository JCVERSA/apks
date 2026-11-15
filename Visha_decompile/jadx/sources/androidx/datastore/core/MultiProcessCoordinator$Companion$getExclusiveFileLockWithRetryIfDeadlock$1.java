package androidx.datastore.core;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@nt1(c = "androidx.datastore.core.MultiProcessCoordinator$Companion", f = "MultiProcessCoordinator.android.kt", l = {182}, m = "getExclusiveFileLockWithRetryIfDeadlock")
public final class MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    Object result;
    final MultiProcessCoordinator.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1(MultiProcessCoordinator.Companion companion, wh1<? super MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1> wh1Var) {
        super(wh1Var);
        this.this$0 = companion;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getExclusiveFileLockWithRetryIfDeadlock(null, this);
    }
}
