package androidx.p004lifecycle;

import defpackage.mc2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlinx.coroutines.c;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/PausingDispatcher;", "Lkotlinx/coroutines/c;", MethodDecl.initName, "()V", "Lkotlin/coroutines/d;", "context", "", "isDispatchNeeded", "(Lkotlin/coroutines/d;)Z", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lzfb;", "dispatch", "(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V", "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PausingDispatcher extends c {
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override
    public void dispatch(d context, Runnable block) {
        y45.j(context, "context");
        y45.j(block, "block");
        this.dispatchQueue.dispatchAndEnqueue(context, block);
    }

    @Override
    public boolean isDispatchNeeded(d context) {
        y45.j(context, "context");
        if (mc2.c().b().isDispatchNeeded(context)) {
            return true;
        }
        return !this.dispatchQueue.canRun();
    }
}
