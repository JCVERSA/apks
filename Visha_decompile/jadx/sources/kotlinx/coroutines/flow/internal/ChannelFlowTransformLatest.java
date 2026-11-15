package kotlinx.coroutines.flow.internal;

import defpackage.nz3;
import defpackage.oz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;

public final class ChannelFlowTransformLatest extends ChannelFlowOperator {
    public final u74 f;

    public ChannelFlowTransformLatest(u74 u74Var, nz3 nz3Var, d dVar, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(u74Var, nz3Var, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : dVar, (i2 & 8) != 0 ? -2 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override
    public ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f, this.e, dVar, i, bufferOverflow);
    }

    @Override
    public Object q(oz3 oz3Var, wh1 wh1Var) {
        Object objG = kotlinx.coroutines.d.g(new ChannelFlowTransformLatest$flowCollect$3(this, oz3Var, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }

    public ChannelFlowTransformLatest(u74 u74Var, nz3 nz3Var, d dVar, int i, BufferOverflow bufferOverflow) {
        super(nz3Var, dVar, i, bufferOverflow);
        this.f = u74Var;
    }
}
