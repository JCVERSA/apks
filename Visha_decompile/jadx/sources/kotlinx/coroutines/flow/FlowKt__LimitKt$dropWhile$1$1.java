package kotlinx.coroutines.flow;

import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.jvm.internal.Ref$BooleanRef;

public final class FlowKt__LimitKt$dropWhile$1$1 implements oz3 {
    public final Ref$BooleanRef b;
    public final oz3 c;
    public final s74 d;

    public FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, oz3 oz3Var, s74 s74Var) {
        this.b = ref$BooleanRef;
        this.c = oz3Var;
        this.d = s74Var;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0073  */
    /* JADX WARN: Code duplicated, block: B:32:0x0086 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x008a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object emit(Object obj, wh1 wh1Var) {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        oz3 oz3Var;
        if (wh1Var instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) wh1Var;
            int i = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, wh1Var);
            }
        } else {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, wh1Var);
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.result;
        Object objF = z45.f();
        int i2 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
        if (i2 == 0) {
            c.b(objInvoke);
            if (this.b.element) {
                oz3 oz3Var2 = this.c;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 1;
                if (oz3Var2.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
                return zfb.a;
            }
            s74 s74Var = this.d;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = this;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = obj;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 2;
            objInvoke = s74Var.invoke(obj, flowKt__LimitKt$dropWhile$1$1$emit$1);
            if (objInvoke == objF) {
                return objF;
            }
            if (!((Boolean) objInvoke).booleanValue()) {
                return zfb.a;
            }
            this.b.element = true;
            oz3Var = this.c;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
            if (oz3Var.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                return objF;
            }
        } else {
            if (i2 == 1) {
                c.b(objInvoke);
                return zfb.a;
            }
            if (i2 == 2) {
                obj = flowKt__LimitKt$dropWhile$1$1$emit$1.L$1;
                this = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.L$0;
                c.b(objInvoke);
                if (!((Boolean) objInvoke).booleanValue()) {
                    return zfb.a;
                }
                this.b.element = true;
                oz3Var = this.c;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
                if (oz3Var.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(objInvoke);
            }
        }
        return zfb.a;
    }
}
