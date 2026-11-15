package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class AndroidUiDispatcher extends kotlinx.coroutines.i0 {

    public static final b f5278k = new b(null);

    public static final int f5279l = 8;

    private static final Lazy f5280m = LazyKt.b(new Function0<CoroutineContext>() {
        @Override
        public final CoroutineContext invoke() {
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(j0.b() ? Choreographer.getInstance() : (Choreographer) kotlinx.coroutines.i.e(kotlinx.coroutines.y0.c(), new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(null)), androidx.core.os.h.a(Looper.getMainLooper()), null);
            return androidUiDispatcher.plus(androidUiDispatcher.y());
        }
    });

    private static final ThreadLocal f5281n = new a();

    private final Choreographer f5282a;

    private final Handler f5283b;

    private final Object f5284c;

    private final ArrayDeque f5285d;

    private List f5286e;

    private List f5287f;

    private boolean f5288g;

    private boolean f5289h;

    private final AndroidUiDispatcher$dispatchCallback$1 f5290i;

    private final androidx.compose.runtime.u0 f5291j;

    public static final class a extends ThreadLocal {
        a() {
        }

        @Override
        public CoroutineContext initialValue() {
            Choreographer choreographer = Choreographer.getInstance();
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalStateException("no Looper on this thread");
            }
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, androidx.core.os.h.a(looperMyLooper), null);
            return androidUiDispatcher.plus(androidUiDispatcher.y());
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CoroutineContext a() {
            if (j0.b()) {
                return b();
            }
            CoroutineContext coroutineContext = (CoroutineContext) AndroidUiDispatcher.f5281n.get();
            if (coroutineContext != null) {
                return coroutineContext;
            }
            throw new IllegalStateException("no AndroidUiDispatcher for this thread");
        }

        public final CoroutineContext b() {
            return (CoroutineContext) AndroidUiDispatcher.f5280m.getValue();
        }

        private b() {
        }
    }

    public AndroidUiDispatcher(Choreographer choreographer, Handler handler, DefaultConstructorMarker defaultConstructorMarker) {
        this(choreographer, handler);
    }

    private final Runnable S() {
        Runnable runnable;
        synchronized (this.f5284c) {
            runnable = (Runnable) this.f5285d.p();
        }
        return runnable;
    }

    public final void T(long j10) {
        synchronized (this.f5284c) {
            if (this.f5289h) {
                this.f5289h = false;
                List list = this.f5286e;
                this.f5286e = this.f5287f;
                this.f5287f = list;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((Choreographer.FrameCallback) list.get(i10)).doFrame(j10);
                }
                list.clear();
            }
        }
    }

    public final void W() {
        boolean z10;
        do {
            Runnable runnableS = S();
            while (runnableS != null) {
                runnableS.run();
                runnableS = S();
            }
            synchronized (this.f5284c) {
                if (this.f5285d.isEmpty()) {
                    z10 = false;
                    this.f5288g = false;
                } else {
                    z10 = true;
                }
            }
        } while (z10);
    }

    public final void X(Choreographer.FrameCallback frameCallback) {
        synchronized (this.f5284c) {
            try {
                this.f5286e.add(frameCallback);
                if (!this.f5289h) {
                    this.f5289h = true;
                    this.f5282a.postFrameCallback(this.f5290i);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d0(Choreographer.FrameCallback frameCallback) {
        synchronized (this.f5284c) {
            this.f5286e.remove(frameCallback);
        }
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        synchronized (this.f5284c) {
            try {
                this.f5285d.addLast(runnable);
                if (!this.f5288g) {
                    this.f5288g = true;
                    this.f5283b.post(this.f5290i);
                    if (!this.f5289h) {
                        this.f5289h = true;
                        this.f5282a.postFrameCallback(this.f5290i);
                    }
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Choreographer x() {
        return this.f5282a;
    }

    public final androidx.compose.runtime.u0 y() {
        return this.f5291j;
    }

    private AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.f5282a = choreographer;
        this.f5283b = handler;
        this.f5284c = new Object();
        this.f5285d = new ArrayDeque();
        this.f5286e = new ArrayList();
        this.f5287f = new ArrayList();
        this.f5290i = new AndroidUiDispatcher$dispatchCallback$1(this);
        this.f5291j = new AndroidUiFrameClock(choreographer, this);
    }
}
