package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.rz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.AbortFlowException;

public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 implements nz3 {
    public final nz3 b;
    public final s74 c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", l = {120}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(wh1 wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(nz3 nz3Var, s74 s74Var) {
        this.b = nz3Var;
        this.c = s74Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        AnonymousClass1 anonymousClass1;
        FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(obj);
            nz3 nz3Var = this.b;
            FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2 = new FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1(this.c, oz3Var);
            try {
                anonymousClass1.L$0 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2;
                anonymousClass1.label = 1;
                if (nz3Var.collect(flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (AbortFlowException e) {
                e = e;
                flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2;
                rz3.a(e, flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) anonymousClass1.L$0;
            try {
                c.b(obj);
            } catch (AbortFlowException e2) {
                e = e2;
                rz3.a(e, flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
            }
        }
        return zfb.a;
    }
}
