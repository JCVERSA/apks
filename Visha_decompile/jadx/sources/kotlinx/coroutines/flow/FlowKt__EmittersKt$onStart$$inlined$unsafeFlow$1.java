package kotlinx.coroutines.flow;

import defpackage.j05;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;

public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements nz3 {
    public final s74 b;
    public final nz3 c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {112, 116}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        public AnonymousClass1(wh1 wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(s74 s74Var, nz3 nz3Var) {
        this.b = s74Var;
        this.c = nz3Var;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        nz3 nz3Var;
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
            SafeCollector safeCollector2 = new SafeCollector(oz3Var, anonymousClass1.getContext());
            try {
                s74 s74Var = this.b;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = oz3Var;
                anonymousClass1.L$2 = safeCollector2;
                anonymousClass1.label = 1;
                j05.c(6);
                Object objInvoke = s74Var.invoke(safeCollector2, anonymousClass1);
                j05.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                nz3Var = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.c;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (nz3Var.collect(oz3Var, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th) {
                th = th;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else if (i2 == 1) {
            safeCollector = (SafeCollector) anonymousClass1.L$2;
            oz3Var = (oz3) anonymousClass1.L$1;
            flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) anonymousClass1.L$0;
            try {
                c.b(obj);
                safeCollector.releaseIntercepted();
                nz3Var = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.c;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (nz3Var.collect(oz3Var, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
