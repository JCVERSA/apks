package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.t1;

public abstract class c {
    public static final a B(a aVar, Function4 function4) {
        return FlowKt__ErrorsKt.g(aVar, function4);
    }

    public static final h1 C(a aVar, kotlinx.coroutines.n0 n0Var, f1 f1Var, Object obj) {
        return FlowKt__ShareKt.e(aVar, n0Var, f1Var, obj);
    }

    public static final a D(a aVar, Function2 function2) {
        return FlowKt__LimitKt.b(aVar, function2);
    }

    public static final a E(a aVar, Function3 function3) {
        return FlowKt__MergeKt.b(aVar, function3);
    }

    public static final b1 a(w0 w0Var) {
        return FlowKt__ShareKt.a(w0Var);
    }

    public static final h1 b(x0 x0Var) {
        return FlowKt__ShareKt.b(x0Var);
    }

    public static final a c(a aVar, int i10, BufferOverflow bufferOverflow) {
        return q.a(aVar, i10, bufferOverflow);
    }

    public static final a e(a aVar, Function3 function3) {
        return FlowKt__ErrorsKt.a(aVar, function3);
    }

    public static final Object f(a aVar, b bVar, Continuation continuation) {
        return FlowKt__ErrorsKt.b(aVar, bVar, continuation);
    }

    public static final Object g(a aVar, Continuation continuation) {
        return FlowKt__CollectKt.a(aVar, continuation);
    }

    public static final Object h(a aVar, Function2 function2, Continuation continuation) {
        return FlowKt__CollectKt.b(aVar, function2, continuation);
    }

    public static final a i(a aVar) {
        return q.d(aVar);
    }

    public static final a j(a aVar) {
        return t.e(aVar);
    }

    public static final a k(a aVar, Function2 function2) {
        return FlowKt__LimitKt.a(aVar, function2);
    }

    public static final Object l(b bVar, kotlinx.coroutines.channels.r rVar, Continuation continuation) {
        return FlowKt__ChannelsKt.b(bVar, rVar, continuation);
    }

    public static final Object m(b bVar, a aVar, Continuation continuation) {
        return FlowKt__CollectKt.c(bVar, aVar, continuation);
    }

    public static final void n(b bVar) {
        FlowKt__EmittersKt.b(bVar);
    }

    public static final Object o(a aVar, Continuation continuation) {
        return FlowKt__ReduceKt.a(aVar, continuation);
    }

    public static final Object p(a aVar, Function2 function2, Continuation continuation) {
        return FlowKt__ReduceKt.b(aVar, function2, continuation);
    }

    public static final Object q(a aVar, Continuation continuation) {
        return FlowKt__ReduceKt.c(aVar, continuation);
    }

    public static final a r(Function2 function2) {
        return n.a(function2);
    }

    public static final a s(Object obj) {
        return n.b(obj);
    }

    public static final a t(a aVar, CoroutineContext coroutineContext) {
        return q.e(aVar, coroutineContext);
    }

    public static final t1 u(a aVar, kotlinx.coroutines.n0 n0Var) {
        return FlowKt__CollectKt.d(aVar, n0Var);
    }

    public static final a v(a aVar, Function2 function2) {
        return FlowKt__MergeKt.a(aVar, function2);
    }

    public static final a w(a aVar, Function3 function3) {
        return FlowKt__EmittersKt.d(aVar, function3);
    }

    public static final a x(a aVar, Function2 function2) {
        return FlowKt__TransformKt.a(aVar, function2);
    }

    public static final a y(a aVar, Function2 function2) {
        return FlowKt__EmittersKt.e(aVar, function2);
    }

    public static final a z(a aVar, long j10, Function2 function2) {
        return FlowKt__ErrorsKt.e(aVar, j10, function2);
    }
}
