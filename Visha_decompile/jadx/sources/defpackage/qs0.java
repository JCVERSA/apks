package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt__ChannelsKt;
import kotlinx.coroutines.flow.internal.ChannelFlow;

public final class qs0 extends ChannelFlow {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(qs0.class, "consumed$volatile");
    private volatile int consumed$volatile;
    public final qo8 e;
    public final boolean f;

    public qs0(qo8 qo8Var, boolean z, d dVar, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(qo8Var, z, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : dVar, (i2 & 8) != 0 ? -3 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        if (this.c != -3) {
            Object objCollect = super.collect(oz3Var, wh1Var);
            return objCollect == z45.f() ? objCollect : zfb.a;
        }
        o();
        Object objC = FlowKt__ChannelsKt.c(oz3Var, this.e, this.f, wh1Var);
        return objC == z45.f() ? objC : zfb.a;
    }

    @Override
    public String e() {
        return "channel=" + this.e;
    }

    @Override
    public Object h(gh8 gh8Var, wh1 wh1Var) {
        Object objC = FlowKt__ChannelsKt.c(new hc9(gh8Var), this.e, this.f, wh1Var);
        return objC == z45.f() ? objC : zfb.a;
    }

    @Override
    public ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow) {
        return new qs0(this.e, this.f, dVar, i, bufferOverflow);
    }

    @Override
    public nz3 j() {
        return new qs0(this.e, this.f, null, 0, null, 28, null);
    }

    @Override
    public qo8 m(nk1 nk1Var) {
        o();
        return this.c == -3 ? this.e : super.m(nk1Var);
    }

    public final void o() {
        if (this.f && g.getAndSet(this, 1) != 0) {
            throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once");
        }
    }

    public qs0(qo8 qo8Var, boolean z, d dVar, int i, BufferOverflow bufferOverflow) {
        super(dVar, i, bufferOverflow);
        this.e = qo8Var;
        this.f = z;
        this.consumed$volatile = 0;
    }
}
