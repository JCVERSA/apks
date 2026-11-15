package kotlinx.coroutines;

import com.transsion.livecaption.constant.ICode;
import defpackage.dia;
import defpackage.ek1;
import defpackage.kc2;
import defpackage.kk1;
import defpackage.sfb;
import defpackage.vb1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.CancellationException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.scheduling.Task;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\u000b\u001a\u0004\u0018\u00010\bH ¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0012\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\rH\u0010¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0019\u001a\u0004\u0018\u00010\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\rH\u0000¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010 R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000!8 X \u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", "T", "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "", "resumeMode", MethodDecl.initName, "(I)V", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "", "cause", "Lzfb;", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", ICode.CALL.CALL_KEY_STATE, "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "run", "()V", "exception", "handleFatalException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "handleFatalException", "I", "Lwh1;", "getDelegate$kotlinx_coroutines_core", "()Lwh1;", "delegate", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class DispatchedTask<T> extends Task {
    public int resumeMode;

    public DispatchedTask(int i) {
        this.resumeMode = i;
    }

    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
    }

    public abstract wh1<T> getDelegate$kotlinx_coroutines_core();

    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object state) {
        vb1 vb1Var = state instanceof vb1 ? (vb1) state : null;
        if (vb1Var != null) {
            return vb1Var.a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object state) {
        return state;
    }

    public final void handleFatalException$kotlinx_coroutines_core(Throwable exception) {
        kk1.a(getDelegate$kotlinx_coroutines_core().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", exception));
    }

    @Override
    public final void run() {
        try {
            wh1<T> delegate$kotlinx_coroutines_core = getDelegate$kotlinx_coroutines_core();
            y45.h(delegate$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
            wh1<T> wh1Var = dispatchedContinuation.continuation;
            Object obj = dispatchedContinuation.countOrElement;
            kotlin.coroutines.d context = wh1Var.getContext();
            Object objI = dia.i(context, obj);
            j jVar = null;
            sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var, context, objI) : null;
            try {
                kotlin.coroutines.d context2 = wh1Var.getContext();
                Object objTakeState$kotlinx_coroutines_core = takeState$kotlinx_coroutines_core();
                Throwable exceptionalResult$kotlinx_coroutines_core = getExceptionalResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core);
                if (exceptionalResult$kotlinx_coroutines_core == null && kc2.b(this.resumeMode)) {
                    jVar = (j) context2.get(j.B6);
                }
                if (jVar != null && !jVar.isActive()) {
                    CancellationException cancellationException = jVar.getCancellationException();
                    cancelCompletedResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core, cancellationException);
                    Result.Companion companion = Result.INSTANCE;
                    wh1Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(cancellationException)));
                } else if (exceptionalResult$kotlinx_coroutines_core != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    wh1Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(exceptionalResult$kotlinx_coroutines_core)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    wh1Var.resumeWith(Result.m279constructorimpl(getSuccessfulResult$kotlinx_coroutines_core(objTakeState$kotlinx_coroutines_core)));
                }
                zfb zfbVar = zfb.a;
            } finally {
                if (sfbVarM == null || sfbVarM.V()) {
                    dia.f(context, objI);
                }
            }
        } catch (Throwable th) {
            handleFatalException$kotlinx_coroutines_core(th);
        }
    }

    public abstract Object takeState$kotlinx_coroutines_core();
}
