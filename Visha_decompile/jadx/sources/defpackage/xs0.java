package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;

public final class xs0 extends ChannelFlowOperator {
    public xs0(nz3 nz3Var, d dVar, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nz3Var, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : dVar, (i2 & 4) != 0 ? -3 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override
    public ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow) {
        return new xs0(this.e, dVar, i, bufferOverflow);
    }

    @Override
    public nz3 j() {
        return this.e;
    }

    @Override
    public Object q(oz3 oz3Var, wh1 wh1Var) {
        Object objCollect = this.e.collect(oz3Var, wh1Var);
        return objCollect == z45.f() ? objCollect : zfb.a;
    }

    public xs0(nz3 nz3Var, d dVar, int i, BufferOverflow bufferOverflow) {
        super(nz3Var, dVar, i, bufferOverflow);
    }
}
