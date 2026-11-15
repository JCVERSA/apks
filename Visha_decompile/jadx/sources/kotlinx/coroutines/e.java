package kotlinx.coroutines;

import defpackage.cr0;
import defpackage.h12;
import defpackage.pt1;
import defpackage.uc2;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public interface e {

    public static final class a {
        public static Object a(e eVar, long j, wh1 wh1Var) {
            if (j <= 0) {
                return zfb.a;
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            eVar.scheduleResumeAfterDelay(j, cancellableContinuationImpl);
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        public static uc2 b(e eVar, long j, Runnable runnable, kotlin.coroutines.d dVar) {
            return h12.a().invokeOnTimeout(j, runnable, dVar);
        }
    }

    uc2 invokeOnTimeout(long j, Runnable runnable, kotlin.coroutines.d dVar);

    void scheduleResumeAfterDelay(long j, cr0 cr0Var);
}
