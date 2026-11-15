package kotlinx.coroutines;

import defpackage.ek1;
import defpackage.kk1;
import defpackage.nk1;
import defpackage.q95;
import defpackage.qt1;
import defpackage.s74;
import defpackage.vb1;
import defpackage.wb1;
import defpackage.wh1;

public abstract class a extends JobSupport implements j, wh1, nk1 {
    private final kotlin.coroutines.d context;

    public a(kotlin.coroutines.d dVar, boolean z, boolean z2) {
        super(z2);
        if (z) {
            initParentJob((j) dVar.get(j.B6));
        }
        this.context = dVar.plus(this);
    }

    public static void getContext$annotations() {
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override
    public String cancellationExceptionMessage() {
        return qt1.a(this) + " was cancelled";
    }

    @Override
    public final kotlin.coroutines.d getContext() {
        return this.context;
    }

    @Override
    public kotlin.coroutines.d getCoroutineContext() {
        return this.context;
    }

    @Override
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) {
        kk1.a(this.context, th);
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    public String nameString$kotlinx_coroutines_core() {
        String strG = ek1.g(this.context);
        if (strG == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        return '\"' + strG + "\":" + super.nameString$kotlinx_coroutines_core();
    }

    public void onCancelled(Throwable th, boolean z) {
    }

    public void onCompleted(Object obj) {
    }

    @Override
    public final void onCompletionInternal(Object obj) {
        if (!(obj instanceof vb1)) {
            onCompleted(obj);
        } else {
            vb1 vb1Var = (vb1) obj;
            onCancelled(vb1Var.a, vb1Var.a());
        }
    }

    @Override
    public final void resumeWith(Object obj) {
        Object objMakeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(wb1.b(obj));
        if (objMakeCompletingOnce$kotlinx_coroutines_core == q95.b) {
            return;
        }
        afterResume(objMakeCompletingOnce$kotlinx_coroutines_core);
    }

    public final <R> void start(CoroutineStart coroutineStart, R r, s74 s74Var) {
        coroutineStart.invoke(s74Var, r, this);
    }
}
