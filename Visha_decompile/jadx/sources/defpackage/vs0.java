package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

public class vs0 extends ChannelFlow {
    public final s74 e;

    public vs0(s74 s74Var, d dVar, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(s74Var, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : dVar, (i2 & 4) != 0 ? -2 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    public static Object n(vs0 vs0Var, gh8 gh8Var, wh1 wh1Var) {
        Object objInvoke = vs0Var.e.invoke(gh8Var, wh1Var);
        return objInvoke == z45.f() ? objInvoke : zfb.a;
    }

    @Override
    public Object h(gh8 gh8Var, wh1 wh1Var) {
        return n(this, gh8Var, wh1Var);
    }

    @Override
    public ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow) {
        return new vs0(this.e, dVar, i, bufferOverflow);
    }

    @Override
    public String toString() {
        return "block[" + this.e + "] -> " + super.toString();
    }

    public vs0(s74 s74Var, d dVar, int i, BufferOverflow bufferOverflow) {
        super(dVar, i, bufferOverflow);
        this.e = s74Var;
    }
}
