package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.p009lifecycle.Lifecycle;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class OnBackPressedDispatcher {

    private final Runnable f539a;

    private final androidx.core.util.a f540b;

    private final ArrayDeque f541c;

    private u f542d;

    private OnBackInvokedCallback f543e;

    private OnBackInvokedDispatcher f544f;

    private boolean f545g;

    private boolean f546h;

    public static final class a {

        public static final a f547a = new a();

        private a() {
        }

        public static final void c(Function0 function0) {
            function0.invoke();
        }

        public final OnBackInvokedCallback b(final Function0 onBackInvoked) {
            Intrinsics.h(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() {
                public final void onBackInvoked() {
                    OnBackPressedDispatcher.a.c(onBackInvoked);
                }
            };
        }

        public final void d(Object dispatcher, int i10, Object callback) {
            Intrinsics.h(dispatcher, "dispatcher");
            Intrinsics.h(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) callback);
        }

        public final void e(Object dispatcher, Object callback) {
            Intrinsics.h(dispatcher, "dispatcher");
            Intrinsics.h(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    public static final class b {

        public static final b f548a = new b();

        public static final class a implements OnBackAnimationCallback {

            final Function1 f549a;

            final Function1 f550b;

            final Function0 f551c;

            final Function0 f552d;

            a(Function1 function1, Function1 function2, Function0 function0, Function0 function3) {
                this.f549a = function1;
                this.f550b = function2;
                this.f551c = function0;
                this.f552d = function3;
            }

            public void onBackCancelled() {
                this.f552d.invoke();
            }

            public void onBackInvoked() {
                this.f551c.invoke();
            }

            public void onBackProgressed(BackEvent backEvent) {
                Intrinsics.h(backEvent, "backEvent");
                this.f550b.invoke(new androidx.activity.b(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                Intrinsics.h(backEvent, "backEvent");
                this.f549a.invoke(new androidx.activity.b(backEvent));
            }
        }

        private b() {
        }

        public final OnBackInvokedCallback a(Function1 onBackStarted, Function1 onBackProgressed, Function0 onBackInvoked, Function0 onBackCancelled) {
            Intrinsics.h(onBackStarted, "onBackStarted");
            Intrinsics.h(onBackProgressed, "onBackProgressed");
            Intrinsics.h(onBackInvoked, "onBackInvoked");
            Intrinsics.h(onBackCancelled, "onBackCancelled");
            return new a(onBackStarted, onBackProgressed, onBackInvoked, onBackCancelled);
        }
    }

    private final class c implements androidx.p009lifecycle.r, androidx.activity.c {

        private final Lifecycle f553a;

        private final u f554b;

        private androidx.activity.c f555c;

        final OnBackPressedDispatcher f556d;

        public c(OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle, u onBackPressedCallback) {
            Intrinsics.h(lifecycle, "lifecycle");
            Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
            this.f556d = onBackPressedDispatcher;
            this.f553a = lifecycle;
            this.f554b = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override
        public void cancel() {
            this.f553a.d(this);
            this.f554b.removeCancellable(this);
            androidx.activity.c cVar = this.f555c;
            if (cVar != null) {
                cVar.cancel();
            }
            this.f555c = null;
        }

        @Override
        public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                this.f555c = this.f556d.j(this.f554b);
                return;
            }
            if (event != Lifecycle.Event.ON_STOP) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.c cVar = this.f555c;
                if (cVar != null) {
                    cVar.cancel();
                }
            }
        }
    }

    private final class d implements androidx.activity.c {

        private final u f557a;

        final OnBackPressedDispatcher f558b;

        public d(OnBackPressedDispatcher onBackPressedDispatcher, u onBackPressedCallback) {
            Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
            this.f558b = onBackPressedDispatcher;
            this.f557a = onBackPressedCallback;
        }

        @Override
        public void cancel() {
            this.f558b.f541c.remove(this.f557a);
            if (Intrinsics.c(this.f558b.f542d, this.f557a)) {
                this.f557a.handleOnBackCancelled();
                this.f558b.f542d = null;
            }
            this.f557a.removeCancellable(this);
            Function0<Unit> enabledChangedCallback$activity_release = this.f557a.getEnabledChangedCallback$activity_release();
            if (enabledChangedCallback$activity_release != null) {
                enabledChangedCallback$activity_release.invoke();
            }
            this.f557a.setEnabledChangedCallback$activity_release(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public OnBackPressedDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void k() {
        Object objPrevious;
        u uVar = this.f542d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f541c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        this.f542d = null;
        if (uVar != null) {
            uVar.handleOnBackCancelled();
        }
    }

    public final void m(androidx.activity.b bVar) {
        Object objPrevious;
        u uVar = this.f542d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f541c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        if (uVar != null) {
            uVar.handleOnBackProgressed(bVar);
        }
    }

    public final void n(androidx.activity.b bVar) {
        Object objPrevious;
        ArrayDeque arrayDeque = this.f541c;
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!((u) objPrevious).isEnabled());
        u uVar = (u) objPrevious;
        if (this.f542d != null) {
            k();
        }
        this.f542d = uVar;
        if (uVar != null) {
            uVar.handleOnBackStarted(bVar);
        }
    }

    private final void p(boolean z10) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f544f;
        OnBackInvokedCallback onBackInvokedCallback = this.f543e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        if (z10 && !this.f545g) {
            a.f547a.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f545g = true;
        } else {
            if (z10 || !this.f545g) {
                return;
            }
            a.f547a.e(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f545g = false;
        }
    }

    public final void q() {
        boolean z10 = this.f546h;
        ArrayDeque arrayDeque = this.f541c;
        boolean z11 = false;
        if (!(arrayDeque instanceof Collection) || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((u) it.next()).isEnabled()) {
                    z11 = true;
                    break;
                }
            }
        }
        this.f546h = z11;
        if (z11 != z10) {
            androidx.core.util.a aVar = this.f540b;
            if (aVar != null) {
                aVar.accept(Boolean.valueOf(z11));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                p(z11);
            }
        }
    }

    public final void h(u onBackPressedCallback) {
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        j(onBackPressedCallback);
    }

    public final void i(androidx.p009lifecycle.u owner, u onBackPressedCallback) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        Lifecycle lifecycle = owner.getLifecycle();
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.addCancellable(new c(this, lifecycle, onBackPressedCallback));
        q();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCallback$1(this));
    }

    public final androidx.activity.c j(u onBackPressedCallback) {
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        this.f541c.add(onBackPressedCallback);
        d dVar = new d(this, onBackPressedCallback);
        onBackPressedCallback.addCancellable(dVar);
        q();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCancellableCallback$1(this));
        return dVar;
    }

    public final void l() {
        Object objPrevious;
        u uVar = this.f542d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f541c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        this.f542d = null;
        if (uVar != null) {
            uVar.handleOnBackPressed();
            return;
        }
        Runnable runnable = this.f539a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void o(OnBackInvokedDispatcher invoker) {
        Intrinsics.h(invoker, "invoker");
        this.f544f = invoker;
        p(this.f546h);
    }

    public OnBackPressedDispatcher(Runnable runnable, androidx.core.util.a aVar) {
        this.f539a = runnable;
        this.f540b = aVar;
        this.f541c = new ArrayDeque();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            this.f543e = i10 >= 34 ? b.f548a.a(new Function1<androidx.activity.b, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((androidx.activity.b) obj);
                    return Unit.f64096a;
                }

                public final void invoke(androidx.activity.b backEvent) {
                    Intrinsics.h(backEvent, "backEvent");
                    OnBackPressedDispatcher.this.n(backEvent);
                }
            }, new Function1<androidx.activity.b, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((androidx.activity.b) obj);
                    return Unit.f64096a;
                }

                public final void invoke(androidx.activity.b backEvent) {
                    Intrinsics.h(backEvent, "backEvent");
                    OnBackPressedDispatcher.this.m(backEvent);
                }
            }, new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m1invoke();
                    return Unit.f64096a;
                }

                public final void m1invoke() {
                    OnBackPressedDispatcher.this.l();
                }
            }, new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m2invoke();
                    return Unit.f64096a;
                }

                public final void m2invoke() {
                    OnBackPressedDispatcher.this.k();
                }
            }) : a.f547a.b(new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m3invoke();
                    return Unit.f64096a;
                }

                public final void m3invoke() {
                    OnBackPressedDispatcher.this.l();
                }
            });
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this(runnable, null);
    }

    public OnBackPressedDispatcher(Runnable runnable, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : runnable);
    }
}
