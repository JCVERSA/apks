package kotlinx.coroutines.flow;

import defpackage.j05;
import defpackage.nt1;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.AbortFlowException;

public final class FlowKt__ReduceKt$first$$inlined$collectWhile$2 implements oz3 {
    public final s74 b;
    public final Ref$ObjectRef c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", l = {131}, m = "emit")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        public AnonymousClass1(wh1 wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt$first$$inlined$collectWhile$2.this.emit(null, this);
        }
    }

    public FlowKt__ReduceKt$first$$inlined$collectWhile$2(s74 s74Var, Ref$ObjectRef ref$ObjectRef) {
        this.b = s74Var;
        this.c = ref$ObjectRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object emit(Object obj, wh1 wh1Var) {
        AnonymousClass1 anonymousClass1;
        T t;
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
        Object objInvoke = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(objInvoke);
            s74 s74Var = this.b;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = obj;
            anonymousClass1.label = 1;
            j05.c(6);
            objInvoke = s74Var.invoke(obj, anonymousClass1);
            j05.c(7);
            if (objInvoke == objF) {
                t = obj;
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj2 = anonymousClass1.L$1;
            this = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) anonymousClass1.L$0;
            c.b(objInvoke);
            t = obj2;
        }
        t = obj;
        if (!((Boolean) objInvoke).booleanValue()) {
            return zfb.a;
        }
        this.c.element = t;
        throw new AbortFlowException(this);
    }
}
