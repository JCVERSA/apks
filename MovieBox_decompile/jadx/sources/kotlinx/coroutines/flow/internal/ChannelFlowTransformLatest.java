package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.o0;

public final class ChannelFlowTransformLatest extends ChannelFlowOperator {

    private final Function3 f64823e;

    public ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.a aVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function3, aVar, (i11 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override
    protected ChannelFlow j(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f64823e, this.f64822d, coroutineContext, i10, bufferOverflow);
    }

    @Override
    protected Object r(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        Object objE = o0.e(new ChannelFlowTransformLatest$flowCollect$3(this, bVar, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    public ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.a aVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        super(aVar, coroutineContext, i10, bufferOverflow);
        this.f64823e = function3;
    }
}
