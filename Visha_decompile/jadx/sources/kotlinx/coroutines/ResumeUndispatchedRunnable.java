package kotlinx.coroutines;

import defpackage.cr0;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\fR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/ResumeUndispatchedRunnable;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlinx/coroutines/c;", "dispatcher", "Lcr0;", "Lzfb;", "continuation", MethodDecl.initName, "(Lkotlinx/coroutines/c;Lcr0;)V", "run", "()V", "Lkotlinx/coroutines/c;", "Lcr0;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ResumeUndispatchedRunnable implements Runnable {
    private final cr0 continuation;
    private final c dispatcher;

    public ResumeUndispatchedRunnable(c cVar, cr0 cr0Var) {
        this.dispatcher = cVar;
        this.continuation = cr0Var;
    }

    @Override
    public void run() {
        this.continuation.resumeUndispatched(this.dispatcher, zfb.a);
    }
}
