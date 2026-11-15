package kotlinx.coroutines.channels;

import defpackage.c74;
import defpackage.cr0;
import defpackage.cu0;
import defpackage.e74;
import defpackage.ek1;
import defpackage.fh8;
import defpackage.gh8;
import defpackage.nk1;
import defpackage.pt1;
import defpackage.qo8;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.j;

public abstract class ProduceKt {

    public static final class a implements e74 {
        public final cr0 b;

        public a(cr0 cr0Var) {
            this.b = cr0Var;
        }

        public final void a(Throwable th) {
            cr0 cr0Var = this.b;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }

        @Override
        public Object invoke(Object obj) {
            a((Throwable) obj);
            return zfb.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(gh8 gh8Var, c74 c74Var, wh1 wh1Var) {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        if (wh1Var instanceof ProduceKt$awaitClose$1) {
            produceKt$awaitClose$1 = (ProduceKt$awaitClose$1) wh1Var;
            int i = produceKt$awaitClose$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                produceKt$awaitClose$1.label = i - Integer.MIN_VALUE;
            } else {
                produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(wh1Var);
            }
        } else {
            produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(wh1Var);
        }
        Object obj = produceKt$awaitClose$1.result;
        Object objF = z45.f();
        int i2 = produceKt$awaitClose$1.label;
        try {
            if (i2 == 0) {
                c.b(obj);
                if (produceKt$awaitClose$1.getContext().get(j.B6) != gh8Var) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
                }
                produceKt$awaitClose$1.L$0 = gh8Var;
                produceKt$awaitClose$1.L$1 = c74Var;
                produceKt$awaitClose$1.label = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(produceKt$awaitClose$1), 1);
                cancellableContinuationImpl.initCancellability();
                gh8Var.a(new a(cancellableContinuationImpl));
                Object result = cancellableContinuationImpl.getResult();
                if (result == z45.f()) {
                    pt1.c(produceKt$awaitClose$1);
                }
                if (result == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c74Var = (c74) produceKt$awaitClose$1.L$1;
                c.b(obj);
            }
            c74Var.invoke();
            return zfb.a;
        } catch (Throwable th) {
            c74Var.invoke();
            throw th;
        }
    }

    public static final qo8 b(nk1 nk1Var, d dVar, int i, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, e74 e74Var, s74 s74Var) {
        fh8 fh8Var = new fh8(ek1.j(nk1Var, dVar), cu0.b(i, bufferOverflow, null, 4, null));
        if (e74Var != null) {
            fh8Var.invokeOnCompletion(e74Var);
        }
        fh8Var.start(coroutineStart, fh8Var, s74Var);
        return fh8Var;
    }

    public static qo8 c(nk1 nk1Var, d dVar, int i, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, e74 e74Var, s74 s74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            dVar = EmptyCoroutineContext.INSTANCE;
        }
        d dVar2 = dVar;
        if ((i2 & 2) != 0) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i2 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i2 & 16) != 0) {
            e74Var = null;
        }
        return b(nk1Var, dVar2, i3, bufferOverflow2, coroutineStart2, e74Var, s74Var);
    }
}
