package kotlinx.coroutines.flow.internal;

import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {23}, m = "invokeSuspend")
public final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements s74 {
    final oz3 $collector;
    private Object L$0;
    int label;
    final ChannelFlowTransformLatest this$0;

    public static final class AnonymousClass1 implements oz3 {
        public final Ref$ObjectRef b;
        public final nk1 c;
        public final ChannelFlowTransformLatest d;
        public final oz3 e;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
        @nt1(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {30}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            final oz3 $collector;
            final Object $value;
            int label;
            final ChannelFlowTransformLatest this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(ChannelFlowTransformLatest channelFlowTransformLatest, oz3 oz3Var, Object obj, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.this$0 = channelFlowTransformLatest;
                this.$collector = oz3Var;
                this.$value = obj;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.this$0, this.$collector, this.$value, wh1Var);
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
                    u74 u74Var = this.this$0.f;
                    oz3 oz3Var = this.$collector;
                    Object obj2 = this.$value;
                    this.label = 1;
                    if (u74Var.invoke(oz3Var, obj2, this) == objF) {
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

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, nk1 nk1Var, ChannelFlowTransformLatest channelFlowTransformLatest, oz3 oz3Var) {
            this.b = ref$ObjectRef;
            this.c = nk1Var;
            this.d = channelFlowTransformLatest;
            this.e = oz3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r6v3, types: [T, kotlinx.coroutines.j] */
        @Override
        public final Object emit(Object obj, wh1 wh1Var) {
            ChannelFlowTransformLatest$flowCollect$3$1$emit$1 channelFlowTransformLatest$flowCollect$3$1$emit$1;
            if (wh1Var instanceof ChannelFlowTransformLatest$flowCollect$3$1$emit$1) {
                channelFlowTransformLatest$flowCollect$3$1$emit$1 = (ChannelFlowTransformLatest$flowCollect$3$1$emit$1) wh1Var;
                int i = channelFlowTransformLatest$flowCollect$3$1$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    channelFlowTransformLatest$flowCollect$3$1$emit$1 = new ChannelFlowTransformLatest$flowCollect$3$1$emit$1(this, wh1Var);
                }
            } else {
                channelFlowTransformLatest$flowCollect$3$1$emit$1 = new ChannelFlowTransformLatest$flowCollect$3$1$emit$1(this, wh1Var);
            }
            Object obj2 = channelFlowTransformLatest$flowCollect$3$1$emit$1.result;
            Object objF = z45.f();
            int i2 = channelFlowTransformLatest$flowCollect$3$1$emit$1.label;
            if (i2 == 0) {
                c.b(obj2);
                j jVar = (j) this.b.element;
                if (jVar != null) {
                    jVar.cancel(new ChildCancelledException());
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$0 = this;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$1 = obj;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$2 = jVar;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.label = 1;
                    if (jVar.join(channelFlowTransformLatest$flowCollect$3$1$emit$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = channelFlowTransformLatest$flowCollect$3$1$emit$1.L$1;
                this = (AnonymousClass1) channelFlowTransformLatest$flowCollect$3$1$emit$1.L$0;
                c.b(obj2);
            }
            this.b.element = el0.d(this.c, null, CoroutineStart.UNDISPATCHED, new AnonymousClass2(this.d, this.e, obj, null), 1, null);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest channelFlowTransformLatest, oz3 oz3Var, wh1<? super ChannelFlowTransformLatest$flowCollect$3> wh1Var) {
        super(2, wh1Var);
        this.this$0 = channelFlowTransformLatest;
        this.$collector = oz3Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.this$0, this.$collector, wh1Var);
        channelFlowTransformLatest$flowCollect$3.L$0 = obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            nk1 nk1Var = (nk1) this.L$0;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ChannelFlowTransformLatest channelFlowTransformLatest = this.this$0;
            nz3 nz3Var = channelFlowTransformLatest.e;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef, nk1Var, channelFlowTransformLatest, this.$collector);
            this.label = 1;
            if (nz3Var.collect(anonymousClass1, this) == objF) {
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
