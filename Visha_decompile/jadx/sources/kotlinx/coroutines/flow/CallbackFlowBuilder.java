package kotlinx.coroutines.flow;

import defpackage.gh8;
import defpackage.s74;
import defpackage.vs0;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

public final class CallbackFlowBuilder extends vs0 {
    public final s74 f;

    public CallbackFlowBuilder(s74 s74Var, d dVar, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(s74Var, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : dVar, (i2 & 4) != 0 ? -2 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object h(gh8 gh8Var, wh1 wh1Var) {
        CallbackFlowBuilder$collectTo$1 callbackFlowBuilder$collectTo$1;
        if (wh1Var instanceof CallbackFlowBuilder$collectTo$1) {
            callbackFlowBuilder$collectTo$1 = (CallbackFlowBuilder$collectTo$1) wh1Var;
            int i = callbackFlowBuilder$collectTo$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                callbackFlowBuilder$collectTo$1.label = i - Integer.MIN_VALUE;
            } else {
                callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, wh1Var);
            }
        } else {
            callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, wh1Var);
        }
        Object obj = callbackFlowBuilder$collectTo$1.result;
        Object objF = z45.f();
        int i2 = callbackFlowBuilder$collectTo$1.label;
        if (i2 == 0) {
            c.b(obj);
            callbackFlowBuilder$collectTo$1.L$0 = gh8Var;
            callbackFlowBuilder$collectTo$1.label = 1;
            if (super.h(gh8Var, callbackFlowBuilder$collectTo$1) == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            gh8Var = (gh8) callbackFlowBuilder$collectTo$1.L$0;
            c.b(obj);
        }
        if (gh8Var.j()) {
            return zfb.a;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    @Override
    public ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f, dVar, i, bufferOverflow);
    }

    public CallbackFlowBuilder(s74 s74Var, d dVar, int i, BufferOverflow bufferOverflow) {
        super(s74Var, dVar, i, bufferOverflow);
        this.f = s74Var;
    }
}
