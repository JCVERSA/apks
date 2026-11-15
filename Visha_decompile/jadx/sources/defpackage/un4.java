package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import kotlin.Result;
import kotlin.c;
import kotlinx.coroutines.android.HandlerContext;

public abstract class un4 {
    public static final sn4 a;
    private static volatile Choreographer choreographer;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object objM279constructorimpl;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(new HandlerContext(c(Looper.getMainLooper(), true), objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        a = (sn4) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
    }

    public static final Handler c(Looper looper, boolean z) throws IllegalAccessException, InvocationTargetException {
        if (!z) {
            return new Handler(looper);
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        y45.h(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }

    public static final void d(Choreographer choreographer2, final cr0 cr0Var) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j) {
                un4.e(cr0Var, j);
            }
        });
    }

    public static final void e(cr0 cr0Var, long j) {
        cr0Var.resumeUndispatched(mc2.c(), Long.valueOf(j));
    }

    public static final void f(cr0 cr0Var) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            y45.g(choreographer2);
            choreographer = choreographer2;
        }
        d(choreographer2, cr0Var);
    }
}
