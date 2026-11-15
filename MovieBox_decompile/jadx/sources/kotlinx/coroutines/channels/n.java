package kotlinx.coroutines.channels;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.g0;
import kotlinx.coroutines.n0;

public abstract class n {
    public static final r a(n0 n0Var, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2) {
        o oVar = new o(g0.k(n0Var, coroutineContext), g.b(i10, bufferOverflow, null, 4, null));
        if (function1 != null) {
            oVar.invokeOnCompletion(function1);
        }
        oVar.start(coroutineStart, oVar, function2);
        return oVar;
    }

    public static r b(n0 n0Var, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i11 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i11 & 16) != 0) {
            function1 = null;
        }
        return a(n0Var, coroutineContext2, i12, bufferOverflow2, coroutineStart2, function1, function2);
    }
}
