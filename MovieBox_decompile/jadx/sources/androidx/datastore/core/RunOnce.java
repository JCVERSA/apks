package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public abstract class RunOnce {

    private final kotlinx.coroutines.sync.a f8286a = kotlinx.coroutines.sync.g.b(false, 1, null);

    private final kotlinx.coroutines.w f8287b = kotlinx.coroutines.y.b(null, 1, null);

    public final Object a(Continuation continuation) {
        Object objF = this.f8287b.f(continuation);
        return objF == IntrinsicsKt.f() ? objF : Unit.f64096a;
    }

    protected abstract Object b(Continuation continuation);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Continuation continuation) throws Throwable {
        RunOnce$runIfNeeded$1 runOnce$runIfNeeded$1;
        kotlinx.coroutines.sync.a aVar;
        RunOnce runOnce;
        kotlinx.coroutines.sync.a aVar2;
        Throwable th2;
        RunOnce runOnce2;
        if (continuation instanceof RunOnce$runIfNeeded$1) {
            runOnce$runIfNeeded$1 = (RunOnce$runIfNeeded$1) continuation;
            int i10 = runOnce$runIfNeeded$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                runOnce$runIfNeeded$1.label = i10 - Integer.MIN_VALUE;
            } else {
                runOnce$runIfNeeded$1 = new RunOnce$runIfNeeded$1(this, continuation);
            }
        } else {
            runOnce$runIfNeeded$1 = new RunOnce$runIfNeeded$1(this, continuation);
        }
        Object obj = runOnce$runIfNeeded$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = runOnce$runIfNeeded$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (this.f8287b.isCompleted()) {
                    return Unit.f64096a;
                }
                aVar = this.f8286a;
                runOnce$runIfNeeded$1.L$0 = this;
                runOnce$runIfNeeded$1.L$1 = aVar;
                runOnce$runIfNeeded$1.label = 1;
                if (aVar.f(null, runOnce$runIfNeeded$1) == objF) {
                    return objF;
                }
                runOnce = this;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aVar2 = (kotlinx.coroutines.sync.a) runOnce$runIfNeeded$1.L$1;
                    runOnce2 = (RunOnce) runOnce$runIfNeeded$1.L$0;
                    try {
                        ResultKt.b(obj);
                        kotlinx.coroutines.w wVar = runOnce2.f8287b;
                        Unit unit = Unit.f64096a;
                        wVar.l(unit);
                        aVar2.unlock(null);
                        return unit;
                    } catch (Throwable th3) {
                        th2 = th3;
                        aVar2.unlock(null);
                        throw th2;
                    }
                }
                kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) runOnce$runIfNeeded$1.L$1;
                runOnce = (RunOnce) runOnce$runIfNeeded$1.L$0;
                ResultKt.b(obj);
                aVar = aVar3;
            }
            if (runOnce.f8287b.isCompleted()) {
                Unit unit2 = Unit.f64096a;
                aVar.unlock(null);
                return unit2;
            }
            runOnce$runIfNeeded$1.L$0 = runOnce;
            runOnce$runIfNeeded$1.L$1 = aVar;
            runOnce$runIfNeeded$1.label = 2;
            if (runOnce.b(runOnce$runIfNeeded$1) == objF) {
                return objF;
            }
            aVar2 = aVar;
            runOnce2 = runOnce;
            kotlinx.coroutines.w wVar2 = runOnce2.f8287b;
            Unit unit3 = Unit.f64096a;
            wVar2.l(unit3);
            aVar2.unlock(null);
            return unit3;
        } catch (Throwable th4) {
            aVar2 = aVar;
            th2 = th4;
            aVar2.unlock(null);
            throw th2;
        }
    }
}
