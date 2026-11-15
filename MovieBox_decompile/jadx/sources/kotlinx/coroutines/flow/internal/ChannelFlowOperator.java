package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.g0;

public abstract class ChannelFlowOperator extends ChannelFlow {

    protected final kotlinx.coroutines.flow.a f64822d;

    public ChannelFlowOperator(kotlinx.coroutines.flow.a aVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f64822d = aVar;
    }

    static Object o(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        if (channelFlowOperator.f64820b == -3) {
            CoroutineContext f64063a = continuation.getContext();
            CoroutineContext coroutineContextJ = g0.j(f64063a, channelFlowOperator.f64819a);
            if (Intrinsics.c(coroutineContextJ, f64063a)) {
                Object objR = channelFlowOperator.r(bVar, continuation);
                return objR == IntrinsicsKt.f() ? objR : Unit.f64096a;
            }
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.c(coroutineContextJ.get(companion), f64063a.get(companion))) {
                Object objQ = channelFlowOperator.q(bVar, coroutineContextJ, continuation);
                return objQ == IntrinsicsKt.f() ? objQ : Unit.f64096a;
            }
        }
        Object objA = super.a(bVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }

    static Object p(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.channels.p pVar, Continuation continuation) {
        Object objR = channelFlowOperator.r(new r(pVar), continuation);
        return objR == IntrinsicsKt.f() ? objR : Unit.f64096a;
    }

    private final Object q(kotlinx.coroutines.flow.b bVar, CoroutineContext coroutineContext, Continuation continuation) {
        return d.c(coroutineContext, d.d(bVar, continuation.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation, 4, null);
    }

    @Override
    public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        return o(this, bVar, continuation);
    }

    @Override
    protected Object i(kotlinx.coroutines.channels.p pVar, Continuation continuation) {
        return p(this, pVar, continuation);
    }

    protected abstract Object r(kotlinx.coroutines.flow.b bVar, Continuation continuation);

    @Override
    public String toString() {
        return this.f64822d + " -> " + super.toString();
    }
}
