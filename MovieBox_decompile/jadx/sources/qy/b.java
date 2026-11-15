package qy;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n;

public abstract class b {

    static final class a implements OnCompleteListener {

        final n f70277a;

        a(n nVar) {
            this.f70277a = nVar;
        }

        @Override
        public final void onComplete(Task task) {
            Exception exception = task.getException();
            if (exception != null) {
                n nVar = this.f70277a;
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m453constructorimpl(ResultKt.a(exception)));
            } else {
                if (task.isCanceled()) {
                    n.a.a(this.f70277a, null, 1, null);
                    return;
                }
                n nVar2 = this.f70277a;
                Result.Companion companion2 = Result.INSTANCE;
                nVar2.resumeWith(Result.m453constructorimpl(task.getResult()));
            }
        }
    }

    static final class C0865b implements Function1 {

        final CancellationTokenSource f70278a;

        C0865b(CancellationTokenSource cancellationTokenSource) {
            this.f70278a = cancellationTokenSource;
        }

        public final void a(Throwable th2) {
            this.f70278a.cancel();
        }

        @Override
        public Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.f64096a;
        }
    }

    public static final Object a(Task task, Continuation continuation) {
        return b(task, null, continuation);
    }

    private static final Object b(Task task, CancellationTokenSource cancellationTokenSource, Continuation continuation) throws Exception {
        if (!task.isComplete()) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            task.addOnCompleteListener(qy.a.f70276a, new a(cancellableContinuationImpl));
            if (cancellationTokenSource != null) {
                cancellableContinuationImpl.invokeOnCancellation(new C0865b(cancellationTokenSource));
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.isCanceled()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }
}
