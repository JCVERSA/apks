package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n;
import kotlinx.coroutines.y0;

public abstract class g {

    public static final e f64674a;
    private static volatile Choreographer choreographer;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object objM453constructorimpl;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(new HandlerContext(c(Looper.getMainLooper(), true), objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        f64674a = (e) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
    }

    public static final Handler c(Looper looper, boolean z10) throws IllegalAccessException, InvocationTargetException {
        if (!z10) {
            return new Handler(looper);
        }
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        Intrinsics.f(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }

    public static final e d(Handler handler, String str) {
        return new HandlerContext(handler, str);
    }

    private static final void e(Choreographer choreographer2, final n nVar) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j10) {
                g.f(nVar, j10);
            }
        });
    }

    public static final void f(n nVar, long j10) {
        nVar.resumeUndispatched(y0.c(), Long.valueOf(j10));
    }

    public static final void g(n nVar) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            Intrinsics.e(choreographer2);
            choreographer = choreographer2;
        }
        e(choreographer2, nVar);
    }
}
