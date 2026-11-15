package kotlinx.coroutines.flow;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;

public abstract class AbstractFlow implements nz3 {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AbstractFlow.this.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object collect(oz3 oz3Var, wh1 wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SafeCollector safeCollector;
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
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) anonymousClass1.L$0;
            try {
                c.b(obj);
                safeCollector.releaseIntercepted();
                return zfb.a;
            } catch (Throwable th) {
                th = th;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        c.b(obj);
        SafeCollector safeCollector2 = new SafeCollector(oz3Var, anonymousClass1.getContext());
        try {
            anonymousClass1.L$0 = safeCollector2;
            anonymousClass1.label = 1;
            if (e(safeCollector2, anonymousClass1) == objF) {
                return objF;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return zfb.a;
        } catch (Throwable th2) {
            th = th2;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }

    public abstract Object e(oz3 oz3Var, wh1 wh1Var);
}
