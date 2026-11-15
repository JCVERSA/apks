package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import defpackage.cr0;
import defpackage.e74;
import defpackage.k17;
import defpackage.mc2;
import defpackage.n95;
import defpackage.sn4;
import defpackage.uc2;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.e;

public final class HandlerContext extends sn4 implements e {
    public final Handler b;
    public final String c;
    public final boolean d;
    public final HandlerContext e;

    public HandlerContext(Handler handler, String str, boolean z) {
        super(null);
        this.b = handler;
        this.c = str;
        this.d = z;
        this.e = z ? this : new HandlerContext(handler, str, true);
    }

    public static final void I(HandlerContext handlerContext, Runnable runnable) {
        handlerContext.b.removeCallbacks(runnable);
    }

    public static final zfb J(HandlerContext handlerContext, Runnable runnable, Throwable th) {
        handlerContext.b.removeCallbacks(runnable);
        return zfb.a;
    }

    public final void G(d dVar, Runnable runnable) {
        n95.c(dVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        mc2.b().dispatch(dVar, runnable);
    }

    @Override
    public HandlerContext b() {
        return this.e;
    }

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        if (this.b.post(runnable)) {
            return;
        }
        G(dVar, runnable);
    }

    public boolean equals(Object obj) {
        if (obj instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) obj;
            if (handlerContext.b == this.b && handlerContext.d == this.d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.d ? 1231 : 1237) ^ System.identityHashCode(this.b);
    }

    @Override
    public uc2 invokeOnTimeout(long j, final Runnable runnable, d dVar) {
        if (this.b.postDelayed(runnable, wn8.h(j, 4611686018427387903L))) {
            return new uc2() {
                @Override
                public final void dispose() {
                    HandlerContext.I(this.b, runnable);
                }
            };
        }
        G(dVar, runnable);
        return k17.b;
    }

    @Override
    public boolean isDispatchNeeded(d dVar) {
        return (this.d && y45.e(Looper.myLooper(), this.b.getLooper())) ? false : true;
    }

    @Override
    public void scheduleResumeAfterDelay(long j, final cr0 cr0Var) {
        final Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                cr0Var.resumeUndispatched(this, zfb.a);
            }
        };
        if (this.b.postDelayed(runnable, wn8.h(j, 4611686018427387903L))) {
            cr0Var.invokeOnCancellation(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return HandlerContext.J(this.b, runnable, (Throwable) obj);
                }
            });
        } else {
            G(cr0Var.getContext(), runnable);
        }
    }

    @Override
    public String toString() {
        String strK = k();
        if (strK != null) {
            return strK;
        }
        String string = this.c;
        if (string == null) {
            string = this.b.toString();
        }
        if (!this.d) {
            return string;
        }
        return string + ".immediate";
    }

    public HandlerContext(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }
}
