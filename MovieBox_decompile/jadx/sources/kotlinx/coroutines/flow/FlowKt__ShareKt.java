package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.t1;

abstract class FlowKt__ShareKt {
    public static final b1 a(w0 w0Var) {
        return new y0(w0Var, null);
    }

    public static final h1 b(x0 x0Var) {
        return new z0(x0Var, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    private static final e1 c(a aVar, int i10) {
        ChannelFlow channelFlow;
        a aVarK;
        int iE = RangesKt.e(i10, kotlinx.coroutines.channels.d.f64720n1.a()) - i10;
        if (!(aVar instanceof ChannelFlow) || (aVarK = (channelFlow = (ChannelFlow) aVar).k()) == null) {
            return new e1(aVar, iE, BufferOverflow.SUSPEND, EmptyCoroutineContext.INSTANCE);
        }
        int i11 = channelFlow.f64820b;
        if (i11 != -3 && i11 != -2 && i11 != 0) {
            iE = i11;
        } else if (channelFlow.f64821c == BufferOverflow.SUSPEND) {
            if (i11 == 0) {
                iE = 0;
            }
        } else if (i10 == 0) {
            iE = 1;
        } else {
            iE = 0;
        }
        return new e1(aVarK, iE, channelFlow.f64821c, channelFlow.f64819a);
    }

    private static final t1 d(kotlinx.coroutines.n0 n0Var, CoroutineContext coroutineContext, a aVar, w0 w0Var, f1 f1Var, Object obj) {
        return kotlinx.coroutines.i.c(n0Var, coroutineContext, Intrinsics.c(f1Var, f1.f64813a.c()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(f1Var, aVar, w0Var, obj, null));
    }

    public static final h1 e(a aVar, kotlinx.coroutines.n0 n0Var, f1 f1Var, Object obj) {
        e1 e1VarC = c(aVar, 1);
        x0 x0VarA = i1.a(obj);
        return new z0(x0VarA, d(n0Var, e1VarC.f64812d, e1VarC.f64809a, x0VarA, f1Var, obj));
    }
}
