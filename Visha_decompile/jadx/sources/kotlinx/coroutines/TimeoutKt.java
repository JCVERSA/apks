package kotlinx.coroutines;

import defpackage.n95;
import defpackage.pt1;
import defpackage.s74;
import defpackage.tfb;
import defpackage.wh1;
import defpackage.z45;
import kotlin.jvm.internal.Ref$ObjectRef;

public abstract class TimeoutKt {
    public static final TimeoutCancellationException a(long j, e eVar, j jVar) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", jVar);
    }

    public static final Object b(TimeoutCoroutine timeoutCoroutine, s74 s74Var) {
        n95.g(timeoutCoroutine, DelayKt.c(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getContext()));
        return tfb.c(timeoutCoroutine, timeoutCoroutine, s74Var);
    }

    public static final Object c(long j, s74 s74Var, wh1 wh1Var) {
        if (j <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object objB = b(new TimeoutCoroutine(j, wh1Var), s74Var);
        if (objB == z45.f()) {
            pt1.c(wh1Var);
        }
        return objB;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.TimeoutCoroutine] */
    public static final Object d(long j, s74 s74Var, wh1 wh1Var) {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        if (wh1Var instanceof TimeoutKt$withTimeoutOrNull$1) {
            timeoutKt$withTimeoutOrNull$1 = (TimeoutKt$withTimeoutOrNull$1) wh1Var;
            int i = timeoutKt$withTimeoutOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(wh1Var);
            }
        } else {
            timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(wh1Var);
        }
        Object obj = timeoutKt$withTimeoutOrNull$1.result;
        Object objF = z45.f();
        int i2 = timeoutKt$withTimeoutOrNull$1.label;
        if (i2 == 0) {
            kotlin.c.b(obj);
            if (j <= 0) {
                return null;
            }
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            try {
                timeoutKt$withTimeoutOrNull$1.L$0 = s74Var;
                timeoutKt$withTimeoutOrNull$1.L$1 = ref$ObjectRef2;
                timeoutKt$withTimeoutOrNull$1.J$0 = j;
                timeoutKt$withTimeoutOrNull$1.label = 1;
                ?? timeoutCoroutine = new TimeoutCoroutine(j, timeoutKt$withTimeoutOrNull$1);
                ref$ObjectRef2.element = timeoutCoroutine;
                Object objB = b(timeoutCoroutine, s74Var);
                if (objB == z45.f()) {
                    pt1.c(timeoutKt$withTimeoutOrNull$1);
                }
                return objB == objF ? objF : objB;
            } catch (TimeoutCancellationException e) {
                e = e;
                ref$ObjectRef = ref$ObjectRef2;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) timeoutKt$withTimeoutOrNull$1.L$1;
            try {
                kotlin.c.b(obj);
                return obj;
            } catch (TimeoutCancellationException e2) {
                e = e2;
            }
        }
        if (e.coroutine == ref$ObjectRef.element) {
            return null;
        }
        throw e;
    }
}
