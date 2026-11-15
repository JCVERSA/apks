package androidx.work;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {134}, m = "invokeSuspend")
final class CoroutineWorker$getForegroundInfoAsync$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final JobListenableFuture $jobFuture;
    Object L$0;
    int label;
    final CoroutineWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoroutineWorker$getForegroundInfoAsync$1(JobListenableFuture jobListenableFuture, CoroutineWorker coroutineWorker, Continuation<? super CoroutineWorker$getForegroundInfoAsync$1> continuation) {
        super(2, continuation);
        this.$jobFuture = jobListenableFuture;
        this.this$0 = coroutineWorker;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CoroutineWorker$getForegroundInfoAsync$1(this.$jobFuture, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        JobListenableFuture jobListenableFuture;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            JobListenableFuture jobListenableFuture2 = this.$jobFuture;
            CoroutineWorker coroutineWorker = this.this$0;
            this.L$0 = jobListenableFuture2;
            this.label = 1;
            Object objT = coroutineWorker.t(this);
            if (objT == objF) {
                return objF;
            }
            jobListenableFuture = jobListenableFuture2;
            obj = objT;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jobListenableFuture = (JobListenableFuture) this.L$0;
            ResultKt.b(obj);
        }
        jobListenableFuture.c(obj);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CoroutineWorker$getForegroundInfoAsync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
