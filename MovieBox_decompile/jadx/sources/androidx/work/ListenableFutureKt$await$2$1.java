package androidx.work;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "R", "run"}, k = 3, mv = {1, 7, 1}, xi = 176)
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final kotlinx.coroutines.n $cancellableContinuation;
    final com.google.common.util.concurrent.r $this_await;

    public ListenableFutureKt$await$2$1(kotlinx.coroutines.n nVar, com.google.common.util.concurrent.r rVar) {
        this.$cancellableContinuation = nVar;
        this.$this_await = rVar;
    }

    @Override
    public final void run() {
        try {
            kotlinx.coroutines.n nVar = this.$cancellableContinuation;
            Result.Companion companion = Result.INSTANCE;
            nVar.resumeWith(Result.m453constructorimpl(this.$this_await.get()));
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause == null) {
                cause = th2;
            }
            if (th2 instanceof CancellationException) {
                this.$cancellableContinuation.cancel(cause);
                return;
            }
            kotlinx.coroutines.n nVar2 = this.$cancellableContinuation;
            Result.Companion companion2 = Result.INSTANCE;
            nVar2.resumeWith(Result.m453constructorimpl(ResultKt.a(cause)));
        }
    }
}
