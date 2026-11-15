package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;

public final class e extends ChannelFlowOperator {
    public e(kotlinx.coroutines.flow.a aVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, (i11 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override
    protected ChannelFlow j(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return new e(this.f64822d, coroutineContext, i10, bufferOverflow);
    }

    @Override
    public kotlinx.coroutines.flow.a k() {
        return this.f64822d;
    }

    @Override
    protected Object r(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        Object objA = this.f64822d.a(bVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }

    public e(kotlinx.coroutines.flow.a aVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        super(aVar, coroutineContext, i10, bufferOverflow);
    }
}
