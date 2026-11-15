package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;

public abstract class e extends kotlinx.coroutines.a implements d {

    private final d f64723a;

    public e(CoroutineContext coroutineContext, d dVar, boolean z10, boolean z11) {
        super(coroutineContext, z10, z11);
        this.f64723a = dVar;
    }

    protected final d U() {
        return this.f64723a;
    }

    @Override
    public Object a(Object obj) {
        return this.f64723a.a(obj);
    }

    @Override
    public Object c() {
        return this.f64723a.c();
    }

    @Override
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override
    public void cancelInternal(Throwable th2) {
        CancellationException cancellationException$default = JobSupport.toCancellationException$default(this, th2, null, 1, null);
        this.f64723a.cancel(cancellationException$default);
        cancelCoroutine(cancellationException$default);
    }

    @Override
    public Object e(Continuation continuation) {
        Object objE = this.f64723a.e(continuation);
        IntrinsicsKt.f();
        return objE;
    }

    @Override
    public Object g(Continuation continuation) {
        return this.f64723a.g(continuation);
    }

    @Override
    public boolean i(Throwable th2) {
        return this.f64723a.i(th2);
    }

    @Override
    public f iterator() {
        return this.f64723a.iterator();
    }

    @Override
    public Object n(Object obj, Continuation continuation) {
        return this.f64723a.n(obj, continuation);
    }

    @Override
    public void cancel() {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
    }

    @Override
    public final boolean cancel(Throwable th2) {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
        return true;
    }
}
