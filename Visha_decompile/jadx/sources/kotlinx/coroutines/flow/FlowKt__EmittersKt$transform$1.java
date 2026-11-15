package kotlinx.coroutines.flow;

import defpackage.j05;
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

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Loz3;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", f = "Emitters.kt", l = {36}, m = "invokeSuspend")
public final class FlowKt__EmittersKt$transform$1 extends SuspendLambda implements s74 {
    final nz3 $this_transform;
    final u74 $transform;
    private Object L$0;
    int label;

    public static final class AnonymousClass1 implements oz3 {
        public final u74 b;
        public final oz3 c;

        public AnonymousClass1(u74 u74Var, oz3 oz3Var) {
            this.b = u74Var;
            this.c = oz3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public final Object emit(Object obj, wh1 wh1Var) {
            FlowKt__EmittersKt$transform$1$1$emit$1 flowKt__EmittersKt$transform$1$1$emit$1;
            if (wh1Var instanceof FlowKt__EmittersKt$transform$1$1$emit$1) {
                flowKt__EmittersKt$transform$1$1$emit$1 = (FlowKt__EmittersKt$transform$1$1$emit$1) wh1Var;
                int i = flowKt__EmittersKt$transform$1$1$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    flowKt__EmittersKt$transform$1$1$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, wh1Var);
                }
            } else {
                flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, wh1Var);
            }
            Object obj2 = flowKt__EmittersKt$transform$1$1$emit$1.result;
            Object objF = z45.f();
            int i2 = flowKt__EmittersKt$transform$1$1$emit$1.label;
            if (i2 == 0) {
                c.b(obj2);
                u74 u74Var = this.b;
                oz3 oz3Var = this.c;
                flowKt__EmittersKt$transform$1$1$emit$1.label = 1;
                if (u74Var.invoke(oz3Var, obj, flowKt__EmittersKt$transform$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj2);
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__EmittersKt$transform$1(nz3 nz3Var, u74 u74Var, wh1<? super FlowKt__EmittersKt$transform$1> wh1Var) {
        super(2, wh1Var);
        this.$this_transform = nz3Var;
        this.$transform = u74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        FlowKt__EmittersKt$transform$1 flowKt__EmittersKt$transform$1 = new FlowKt__EmittersKt$transform$1(this.$this_transform, this.$transform, wh1Var);
        flowKt__EmittersKt$transform$1.L$0 = obj;
        return flowKt__EmittersKt$transform$1;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((FlowKt__EmittersKt$transform$1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            oz3 oz3Var = (oz3) this.L$0;
            nz3 nz3Var = this.$this_transform;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, oz3Var);
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

    public final Object invokeSuspend$$forInline(Object obj) {
        oz3 oz3Var = (oz3) this.L$0;
        nz3 nz3Var = this.$this_transform;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, oz3Var);
        j05.c(0);
        nz3Var.collect(anonymousClass1, this);
        j05.c(1);
        return zfb.a;
    }
}
