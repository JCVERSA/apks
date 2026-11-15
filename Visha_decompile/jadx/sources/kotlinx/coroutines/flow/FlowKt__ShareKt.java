package kotlinx.coroutines.flow;

import defpackage.cl0;
import defpackage.gx9;
import defpackage.hx9;
import defpackage.io8;
import defpackage.kw6;
import defpackage.mw6;
import defpackage.nk1;
import defpackage.nz3;
import defpackage.ps0;
import defpackage.ug9;
import defpackage.wn8;
import defpackage.y45;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.j;

public abstract class FlowKt__ShareKt {
    public static final gx9 a(mw6 mw6Var) {
        return new io8(mw6Var, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    public static final ug9 b(nz3 nz3Var, int i) {
        ChannelFlow channelFlow;
        nz3 nz3VarJ;
        int iD = wn8.d(i, ps0.v1.a()) - i;
        if (!(nz3Var instanceof ChannelFlow) || (nz3VarJ = (channelFlow = (ChannelFlow) nz3Var).j()) == null) {
            return new ug9(nz3Var, iD, BufferOverflow.SUSPEND, EmptyCoroutineContext.INSTANCE);
        }
        int i2 = channelFlow.c;
        if (i2 != -3 && i2 != -2 && i2 != 0) {
            iD = i2;
        } else if (channelFlow.d == BufferOverflow.SUSPEND) {
            if (i2 == 0) {
                iD = 0;
            }
        } else if (i == 0) {
            iD = 1;
        } else {
            iD = 0;
        }
        return new ug9(nz3VarJ, iD, channelFlow.d, channelFlow.b);
    }

    public static final j c(nk1 nk1Var, d dVar, nz3 nz3Var, kw6 kw6Var, a aVar, Object obj) {
        return cl0.c(nk1Var, dVar, y45.e(aVar, a.a.a()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(aVar, nz3Var, kw6Var, obj, null));
    }

    public static final gx9 d(nz3 nz3Var, nk1 nk1Var, a aVar, Object obj) {
        ug9 ug9VarB = b(nz3Var, 1);
        mw6 mw6VarA = hx9.a(obj);
        return new io8(mw6VarA, c(nk1Var, ug9VarB.d, ug9VarB.a, mw6VarA, aVar, obj));
    }
}
