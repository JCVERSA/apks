package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;

public abstract class ChannelFlow implements j {

    public final CoroutineContext f64819a;

    public final int f64820b;

    public final BufferOverflow f64821c;

    public ChannelFlow(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        this.f64819a = coroutineContext;
        this.f64820b = i10;
        this.f64821c = bufferOverflow;
    }

    static Object h(ChannelFlow channelFlow, kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        Object objE = o0.e(new ChannelFlow$collect$2(bVar, channelFlow, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    @Override
    public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
        return h(this, bVar, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Override
    public kotlinx.coroutines.flow.a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        CoroutineContext coroutineContextPlus = coroutineContext.plus(this.f64819a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i11 = this.f64820b;
            if (i11 != -3) {
                if (i10 == -3) {
                    i10 = i11;
                } else if (i11 != -2) {
                    if (i10 == -2) {
                        i10 = i11;
                    } else {
                        i10 += i11;
                        if (i10 < 0) {
                            i10 = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            bufferOverflow = this.f64821c;
        }
        return (Intrinsics.c(coroutineContextPlus, this.f64819a) && i10 == this.f64820b && bufferOverflow == this.f64821c) ? this : j(coroutineContextPlus, i10, bufferOverflow);
    }

    protected String g() {
        return null;
    }

    protected abstract Object i(kotlinx.coroutines.channels.p pVar, Continuation continuation);

    protected abstract ChannelFlow j(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow);

    public kotlinx.coroutines.flow.a k() {
        return null;
    }

    public final Function2 l() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int m() {
        int i10 = this.f64820b;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    public kotlinx.coroutines.channels.r n(n0 n0Var) {
        return kotlinx.coroutines.channels.n.b(n0Var, this.f64819a, m(), this.f64821c, CoroutineStart.ATOMIC, null, l(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        if (this.f64819a != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.f64819a);
        }
        if (this.f64820b != -3) {
            arrayList.add("capacity=" + this.f64820b);
        }
        if (this.f64821c != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f64821c);
        }
        return p0.a(this) + '[' + CollectionsKt.s0(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
