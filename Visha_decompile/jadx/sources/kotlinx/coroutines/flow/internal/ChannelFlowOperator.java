package kotlinx.coroutines.flow.internal;

import defpackage.ek1;
import defpackage.gh8;
import defpackage.hc9;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.wh1;
import defpackage.ws0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;

public abstract class ChannelFlowOperator extends ChannelFlow {
    public final nz3 e;

    public ChannelFlowOperator(nz3 nz3Var, d dVar, int i, BufferOverflow bufferOverflow) {
        super(dVar, i, bufferOverflow);
        this.e = nz3Var;
    }

    public static Object n(ChannelFlowOperator channelFlowOperator, oz3 oz3Var, wh1 wh1Var) {
        if (channelFlowOperator.c == -3) {
            d context = wh1Var.getContext();
            d dVarK = ek1.k(context, channelFlowOperator.b);
            if (y45.e(dVarK, context)) {
                Object objQ = channelFlowOperator.q(oz3Var, wh1Var);
                return objQ == z45.f() ? objQ : zfb.a;
            }
            c.b bVar = c.A6;
            if (y45.e(dVarK.get(bVar), context.get(bVar))) {
                Object objP = channelFlowOperator.p(oz3Var, dVarK, wh1Var);
                return objP == z45.f() ? objP : zfb.a;
            }
        }
        Object objCollect = super.collect(oz3Var, wh1Var);
        return objCollect == z45.f() ? objCollect : zfb.a;
    }

    public static Object o(ChannelFlowOperator channelFlowOperator, gh8 gh8Var, wh1 wh1Var) {
        Object objQ = channelFlowOperator.q(new hc9(gh8Var), wh1Var);
        return objQ == z45.f() ? objQ : zfb.a;
    }

    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        return n(this, oz3Var, wh1Var);
    }

    @Override
    public Object h(gh8 gh8Var, wh1 wh1Var) {
        return o(this, gh8Var, wh1Var);
    }

    public final Object p(oz3 oz3Var, d dVar, wh1 wh1Var) {
        return ws0.c(dVar, ws0.d(oz3Var, wh1Var.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), wh1Var, 4, null);
    }

    public abstract Object q(oz3 oz3Var, wh1 wh1Var);

    @Override
    public String toString() {
        return this.e + " -> " + super.toString();
    }
}
