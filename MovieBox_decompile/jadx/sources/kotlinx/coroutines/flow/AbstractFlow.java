package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.flow.internal.SafeCollector;

public abstract class AbstractFlow implements a {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object a(b bVar, Continuation continuation) throws Throwable {
        AbstractFlow$collect$1 abstractFlow$collect$1;
        Throwable th2;
        SafeCollector safeCollector;
        if (continuation instanceof AbstractFlow$collect$1) {
            abstractFlow$collect$1 = (AbstractFlow$collect$1) continuation;
            int i10 = abstractFlow$collect$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                abstractFlow$collect$1.label = i10 - Integer.MIN_VALUE;
            } else {
                abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
            }
        } else {
            abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
        }
        Object obj = abstractFlow$collect$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = abstractFlow$collect$1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) abstractFlow$collect$1.L$0;
            try {
                ResultKt.b(obj);
                safeCollector.releaseIntercepted();
                return Unit.f64096a;
            } catch (Throwable th3) {
                th2 = th3;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        }
        ResultKt.b(obj);
        SafeCollector safeCollector2 = new SafeCollector(bVar, abstractFlow$collect$1.getContext());
        try {
            abstractFlow$collect$1.L$0 = safeCollector2;
            abstractFlow$collect$1.label = 1;
            if (g(safeCollector2, abstractFlow$collect$1) == objF) {
                return objF;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return Unit.f64096a;
        } catch (Throwable th4) {
            th2 = th4;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th2;
        }
    }

    public abstract Object g(b bVar, Continuation continuation);
}
