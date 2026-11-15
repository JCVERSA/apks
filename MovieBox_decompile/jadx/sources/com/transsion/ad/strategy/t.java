package com.transsion.ad.strategy;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class t {

    public static final t f41188a = new t();

    private static final Rect f41189b = new Rect();

    private static final CopyOnWriteArrayList f41190c = new CopyOnWriteArrayList();

    private static final Lazy f41191d = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return t.u();
        }
    });

    private static final Lazy f41192e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return t.t();
        }
    });

    private static final Lazy f41193f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return t.p();
        }
    });

    private static final Runnable f41194g = new Runnable() {
        @Override
        public final void run() {
            t.s();
        }
    };

    public interface a {

        public static final class C0570a {
            public static double a(a aVar) {
                return 10.0d;
            }
        }

        double getVisibilityThreshold();

        View getVisibilityView();

        void onVisibilityChanged(boolean z10);
    }

    private t() {
    }

    public static final void A() {
        f41188a.m().removeCallbacks(f41194g);
    }

    public static final void k(a aVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = f41190c;
        if (!copyOnWriteArrayList.contains(aVar)) {
            copyOnWriteArrayList.add(aVar);
        }
        if (copyOnWriteArrayList.size() == 1) {
            f41188a.x();
        }
    }

    private final void l(View view, Function1 function1) {
        if (view != null) {
            if (view.getWindowVisibility() != 0) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                    return;
                }
                return;
            }
            Rect rect = f41189b;
            if (!view.getGlobalVisibleRect(rect) || !view.isShown()) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                    return;
                }
                return;
            }
            double dHeight = ((double) rect.height()) * ((double) rect.width());
            double height = ((double) view.getHeight()) * ((double) view.getWidth());
            if (height <= 0.0d) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                }
            } else {
                double d10 = (dHeight * ((double) 100)) / height;
                if (function1 != null) {
                    function1.invoke(Double.valueOf(d10));
                }
            }
        }
    }

    private final Handler m() {
        return (Handler) f41192e.getValue();
    }

    private final HandlerThread n() {
        return (HandlerThread) f41191d.getValue();
    }

    public static final Handler p() {
        return new Handler(Looper.getMainLooper());
    }

    private final void q() {
        m().removeCallbacks(f41194g);
        for (final a aVar : f41190c) {
            f41188a.l(aVar.getVisibilityView(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return t.r(aVar, ((Double) obj).doubleValue());
                }
            });
        }
        if (f41190c.isEmpty()) {
            return;
        }
        m().postDelayed(f41194g, 500L);
    }

    public static final Unit r(a aVar, double d10) {
        if (d10 >= aVar.getVisibilityThreshold()) {
            aVar.onVisibilityChanged(true);
        } else {
            aVar.onVisibilityChanged(false);
        }
        return Unit.f64096a;
    }

    public static final void s() {
        f41188a.q();
    }

    public static final Handler t() {
        return new Handler(f41188a.n().getLooper());
    }

    public static final HandlerThread u() {
        HandlerThread handlerThread = new HandlerThread("MyHandlerThread");
        handlerThread.start();
        return handlerThread;
    }

    public static final void w(a aVar) {
        f41190c.remove(aVar);
    }

    public static final void y() {
        f41188a.q();
    }

    public final void j(final a listener) {
        Intrinsics.h(listener, "listener");
        m().post(new Runnable() {
            @Override
            public final void run() {
                t.k(listener);
            }
        });
    }

    public final boolean o(View view) {
        if (view == null || view.getWindowVisibility() != 0) {
            return false;
        }
        Rect rect = f41189b;
        if (!view.getGlobalVisibleRect(rect) || !view.isShown()) {
            return false;
        }
        double dHeight = ((double) rect.height()) * ((double) rect.width());
        double height = ((double) view.getHeight()) * ((double) view.getWidth());
        return height > 0.0d && (dHeight * ((double) 100)) / height > 0.0d;
    }

    public final void v(final a listener) {
        Intrinsics.h(listener, "listener");
        m().post(new Runnable() {
            @Override
            public final void run() {
                t.w(listener);
            }
        });
    }

    public final void x() {
        m().post(new Runnable() {
            @Override
            public final void run() {
                t.y();
            }
        });
    }

    public final void z() {
        m().post(new Runnable() {
            @Override
            public final void run() {
                t.A();
            }
        });
        q();
    }
}
