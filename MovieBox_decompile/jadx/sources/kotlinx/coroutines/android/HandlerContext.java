package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.n;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y0;

public final class HandlerContext extends e implements t0 {

    private final Handler f64665a;

    private final String f64666b;

    private final boolean f64667c;

    private final HandlerContext f64668d;

    private HandlerContext(Handler handler, String str, boolean z10) {
        super(null);
        this.f64665a = handler;
        this.f64666b = str;
        this.f64667c = z10;
        this.f64668d = z10 ? this : new HandlerContext(handler, str, true);
    }

    private final void u(CoroutineContext coroutineContext, Runnable runnable) {
        v1.c(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        y0.b().dispatch(coroutineContext, runnable);
    }

    public static final void w(HandlerContext handlerContext, Runnable runnable) {
        handlerContext.f64665a.removeCallbacks(runnable);
    }

    public static final Unit x(HandlerContext handlerContext, Runnable runnable, Throwable th2) {
        handlerContext.f64665a.removeCallbacks(runnable);
        return Unit.f64096a;
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (this.f64665a.post(runnable)) {
            return;
        }
        u(coroutineContext, runnable);
    }

    public boolean equals(Object obj) {
        if (obj instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) obj;
            if (handlerContext.f64665a == this.f64665a && handlerContext.f64667c == this.f64667c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return System.identityHashCode(this.f64665a) ^ (this.f64667c ? 1231 : 1237);
    }

    @Override
    public a1 invokeOnTimeout(long j10, final Runnable runnable, CoroutineContext coroutineContext) {
        if (this.f64665a.postDelayed(runnable, RangesKt.i(j10, 4611686018427387903L))) {
            return new a1() {
                @Override
                public final void dispose() {
                    HandlerContext.w(this.f64669a, runnable);
                }
            };
        }
        u(coroutineContext, runnable);
        return d2.f64736a;
    }

    @Override
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.f64667c && Intrinsics.c(Looper.myLooper(), this.f64665a.getLooper())) ? false : true;
    }

    @Override
    public void scheduleResumeAfterDelay(long j10, final n nVar) {
        final Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                nVar.resumeUndispatched(this, Unit.f64096a);
            }
        };
        if (this.f64665a.postDelayed(runnable, RangesKt.i(j10, 4611686018427387903L))) {
            nVar.invokeOnCancellation(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return HandlerContext.x(this.f64671a, runnable, (Throwable) obj);
                }
            });
        } else {
            u(nVar.getF64214a(), runnable);
        }
    }

    @Override
    public String toString() {
        String strQ = q();
        if (strQ != null) {
            return strQ;
        }
        String string = this.f64666b;
        if (string == null) {
            string = this.f64665a.toString();
        }
        if (!this.f64667c) {
            return string;
        }
        return string + ".immediate";
    }

    @Override
    public HandlerContext r() {
        return this.f64668d;
    }

    public HandlerContext(Handler handler, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }
}
