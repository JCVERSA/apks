package androidx.core.util;

import defpackage.wh1;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/core/util/ContinuationRunnable;", "Ljava/lang/Runnable;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lwh1;", "Lzfb;", "continuation", MethodDecl.initName, "(Lwh1;)V", "run", "()V", "", "toString", "()Ljava/lang/String;", "Lwh1;", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    private final wh1<zfb> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(wh1<? super zfb> wh1Var) {
        super(false);
        this.continuation = wh1Var;
    }

    @Override
    public void run() {
        if (compareAndSet(false, true)) {
            wh1<zfb> wh1Var = this.continuation;
            Result.Companion companion = Result.INSTANCE;
            wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }
    }

    @Override
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
