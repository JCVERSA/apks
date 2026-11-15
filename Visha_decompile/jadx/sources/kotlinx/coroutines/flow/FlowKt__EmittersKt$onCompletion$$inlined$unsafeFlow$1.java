package kotlinx.coroutines.flow;

import defpackage.j05;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.tia;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;

public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements nz3 {
    public final nz3 b;
    public final u74 c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {110, 117, 124}, m = "collect")
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
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(nz3 nz3Var, u74 u74Var) {
        this.b = nz3Var;
        this.c = u74Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SafeCollector safeCollector;
        SafeCollector safeCollector2;
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
        try {
            try {
                if (i2 == 0) {
                    c.b(obj);
                    nz3 nz3Var = this.b;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = oz3Var;
                    anonymousClass1.label = 1;
                    if (nz3Var.collect(oz3Var, anonymousClass1) == objF) {
                        return objF;
                    }
                } else {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            Throwable th = (Throwable) anonymousClass1.L$0;
                            c.b(obj);
                            throw th;
                        }
                        if (i2 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        safeCollector2 = (SafeCollector) anonymousClass1.L$0;
                        try {
                            c.b(obj);
                            safeCollector2.releaseIntercepted();
                            return zfb.a;
                        } catch (Throwable th2) {
                            th = th2;
                            safeCollector2.releaseIntercepted();
                            throw th;
                        }
                    }
                    oz3Var = (oz3) anonymousClass1.L$1;
                    this = (FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) anonymousClass1.L$0;
                    c.b(obj);
                }
                u74 u74Var = this.c;
                anonymousClass1.L$0 = safeCollector;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 3;
                j05.c(6);
                Object objInvoke = u74Var.invoke(safeCollector, null, anonymousClass1);
                j05.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return zfb.a;
            } catch (Throwable th3) {
                th = th3;
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                throw th;
            }
            safeCollector = new SafeCollector(oz3Var, anonymousClass1.getContext());
        } catch (Throwable th4) {
            FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
            tia tiaVar = new tia(th4);
            u74 u74Var2 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.c;
            anonymousClass1.L$0 = th4;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            if (FlowKt__EmittersKt.c(tiaVar, u74Var2, th4, anonymousClass1) == objF) {
                return objF;
            }
            throw th4;
        }
    }
}
