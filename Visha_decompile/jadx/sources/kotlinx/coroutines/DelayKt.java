package kotlinx.coroutines;

import defpackage.h12;
import defpackage.pt1;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.KotlinNothingValueException;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public abstract class DelayKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(wh1 wh1Var) {
        DelayKt$awaitCancellation$1 delayKt$awaitCancellation$1;
        if (wh1Var instanceof DelayKt$awaitCancellation$1) {
            delayKt$awaitCancellation$1 = (DelayKt$awaitCancellation$1) wh1Var;
            int i = delayKt$awaitCancellation$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                delayKt$awaitCancellation$1.label = i - Integer.MIN_VALUE;
            } else {
                delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(wh1Var);
            }
        } else {
            delayKt$awaitCancellation$1 = new DelayKt$awaitCancellation$1(wh1Var);
        }
        Object obj = delayKt$awaitCancellation$1.result;
        Object objF = z45.f();
        int i2 = delayKt$awaitCancellation$1.label;
        if (i2 == 0) {
            kotlin.c.b(obj);
            delayKt$awaitCancellation$1.label = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(delayKt$awaitCancellation$1), 1);
            cancellableContinuationImpl.initCancellability();
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(delayKt$awaitCancellation$1);
            }
            if (result == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    public static final Object b(long j, wh1 wh1Var) {
        if (j <= 0) {
            return zfb.a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        if (j < Long.MAX_VALUE) {
            c(cancellableContinuationImpl.getContext()).scheduleResumeAfterDelay(j, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public static final e c(kotlin.coroutines.d dVar) {
        kotlin.coroutines.d.b bVar = dVar.get(kotlin.coroutines.c.A6);
        e eVar = bVar instanceof e ? (e) bVar : null;
        return eVar == null ? h12.a() : eVar;
    }
}
