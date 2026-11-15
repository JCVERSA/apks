package kotlinx.coroutines.flow;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.t1;

public abstract class FlowKt__ErrorsKt {
    public static final a a(a aVar, Function3 function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(aVar, function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object b(a aVar, b bVar, Continuation continuation) throws Throwable {
        FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ErrorsKt$catchImpl$1) {
            flowKt__ErrorsKt$catchImpl$1 = (FlowKt__ErrorsKt$catchImpl$1) continuation;
            int i10 = flowKt__ErrorsKt$catchImpl$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
        }
        Object obj = flowKt__ErrorsKt$catchImpl$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__ErrorsKt$catchImpl$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                b flowKt__ErrorsKt$catchImpl$2 = new FlowKt__ErrorsKt$catchImpl$2(bVar, objectRef2);
                flowKt__ErrorsKt$catchImpl$1.L$0 = objectRef2;
                flowKt__ErrorsKt$catchImpl$1.label = 1;
                if (aVar.a(flowKt__ErrorsKt$catchImpl$2, flowKt__ErrorsKt$catchImpl$1) == objF) {
                    return objF;
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                objectRef = objectRef2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ErrorsKt$catchImpl$1.L$0;
            try {
                ResultKt.b(obj);
                return null;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        Throwable th4 = (Throwable) objectRef.element;
        if (d(th, th4) || c(th, flowKt__ErrorsKt$catchImpl$1.getContext())) {
            throw th;
        }
        if (th4 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            ExceptionsKt.a(th4, th);
            throw th4;
        }
        ExceptionsKt.a(th, th4);
        throw th;
    }

    private static final boolean c(Throwable th2, CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.f65027m1);
        if (t1Var == null || !t1Var.isCancelled()) {
            return false;
        }
        return d(th2, t1Var.getCancellationException());
    }

    private static final boolean d(Throwable th2, Throwable th3) {
        return th3 != null && Intrinsics.c(th3, th2);
    }

    public static final a e(a aVar, long j10, Function2 function2) {
        if (j10 > 0) {
            return c.B(aVar, new FlowKt__ErrorsKt$retry$3(j10, function2, null));
        }
        throw new IllegalArgumentException(("Expected positive amount of retries, but had " + j10).toString());
    }

    public static a f(a aVar, long j10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = Long.MAX_VALUE;
        }
        if ((i10 & 2) != 0) {
            function2 = new FlowKt__ErrorsKt$retry$1(null);
        }
        return c.z(aVar, j10, function2);
    }

    public static final a g(a aVar, Function4 function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(aVar, function4);
    }
}
