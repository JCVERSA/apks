package kotlinx.coroutines.flow;

import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.tia;
import defpackage.u74;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.lang.reflect.InvocationTargetException;
import kotlin.c;

public abstract class FlowKt__EmittersKt {
    public static final void b(oz3 oz3Var) {
        if (oz3Var instanceof tia) {
            throw ((tia) oz3Var).b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(oz3 oz3Var, u74 u74Var, Throwable th, wh1 wh1Var) throws IllegalAccessException, InvocationTargetException {
        FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$1;
        if (wh1Var instanceof FlowKt__EmittersKt$invokeSafely$1) {
            flowKt__EmittersKt$invokeSafely$1 = (FlowKt__EmittersKt$invokeSafely$1) wh1Var;
            int i = flowKt__EmittersKt$invokeSafely$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$invokeSafely$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(wh1Var);
            }
        } else {
            flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(wh1Var);
        }
        Object obj = flowKt__EmittersKt$invokeSafely$1.result;
        Object objF = z45.f();
        int i2 = flowKt__EmittersKt$invokeSafely$1.label;
        try {
            if (i2 == 0) {
                c.b(obj);
                flowKt__EmittersKt$invokeSafely$1.L$0 = th;
                flowKt__EmittersKt$invokeSafely$1.label = 1;
                if (u74Var.invoke(oz3Var, th, flowKt__EmittersKt$invokeSafely$1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) flowKt__EmittersKt$invokeSafely$1.L$0;
                c.b(obj);
            }
            return zfb.a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                ue3.a(th2, th);
            }
            throw th2;
        }
    }

    public static final nz3 d(nz3 nz3Var, u74 u74Var) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(nz3Var, u74Var);
    }

    public static final nz3 e(nz3 nz3Var, s74 s74Var) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(s74Var, nz3Var);
    }
}
