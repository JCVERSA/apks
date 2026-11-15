package kotlinx.coroutines.flow.internal;

import defpackage.gh8;
import defpackage.i81;
import defpackage.i94;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.qo8;
import defpackage.qt1;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;

public abstract class ChannelFlow implements i94 {
    public final d b;
    public final int c;
    public final BufferOverflow d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
    @nt1(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {119}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final oz3 $collector;
        private Object L$0;
        int label;
        final ChannelFlow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(oz3 oz3Var, ChannelFlow channelFlow, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$collector = oz3Var;
            this.this$0 = channelFlow;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$collector, this.this$0, wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                nk1 nk1Var = (nk1) this.L$0;
                oz3 oz3Var = this.$collector;
                qo8 qo8VarM = this.this$0.m(nk1Var);
                this.label = 1;
                if (sz3.m(oz3Var, qo8VarM, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public ChannelFlow(d dVar, int i, BufferOverflow bufferOverflow) {
        this.b = dVar;
        this.c = i;
        this.d = bufferOverflow;
    }

    public static Object g(ChannelFlow channelFlow, oz3 oz3Var, wh1 wh1Var) {
        Object objG = kotlinx.coroutines.d.g(new AnonymousClass2(oz3Var, channelFlow, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }

    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        return g(this, oz3Var, wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Override
    public nz3 d(d dVar, int i, BufferOverflow bufferOverflow) {
        d dVarPlus = dVar.plus(this.b);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i2 = this.c;
            if (i2 != -3) {
                if (i == -3) {
                    i = i2;
                } else if (i2 != -2) {
                    if (i == -2) {
                        i = i2;
                    } else {
                        i += i2;
                        if (i < 0) {
                            i = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            bufferOverflow = this.d;
        }
        return (y45.e(dVarPlus, this.b) && i == this.c && bufferOverflow == this.d) ? this : i(dVarPlus, i, bufferOverflow);
    }

    public String e() {
        return null;
    }

    public abstract Object h(gh8 gh8Var, wh1 wh1Var);

    public abstract ChannelFlow i(d dVar, int i, BufferOverflow bufferOverflow);

    public nz3 j() {
        return null;
    }

    public final s74 k() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int l() {
        int i = this.c;
        if (i == -3) {
            return -2;
        }
        return i;
    }

    public qo8 m(nk1 nk1Var) {
        return ProduceKt.c(nk1Var, this.b, l(), this.d, CoroutineStart.ATOMIC, null, k(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strE = e();
        if (strE != null) {
            arrayList.add(strE);
        }
        if (this.b != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.b);
        }
        if (this.c != -3) {
            arrayList.add("capacity=" + this.c);
        }
        if (this.d != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.d);
        }
        return qt1.a(this) + '[' + i81.y0(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
