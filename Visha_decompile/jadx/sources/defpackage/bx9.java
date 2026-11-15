package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.media3.common.C;
import com.blankj.utilcode.util.ThreadUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class bx9 {
    public static volatile boolean b;
    public static volatile boolean c;
    public static volatile boolean d;
    public static volatile boolean e;
    public static volatile boolean f;
    public static volatile boolean g;
    public static volatile b m;
    public static volatile b o;
    public static final bx9 a = new bx9();
    public static final Object h = new Object();
    public static final List i = new ArrayList();
    public static final List j = new ArrayList();
    public static volatile c74 k = new c74() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(bx9.w());
        }
    };
    public static volatile e74 l = new e74() {
        @Override
        public final Object invoke(Object obj) {
            return bx9.l((c74) obj);
        }
    };
    public static final yi5 n = kotlin.b.a(new c74() {
        @Override
        public final Object invoke() {
            return bx9.k();
        }
    });
    public static final yi5 p = kotlin.b.a(new c74() {
        @Override
        public final Object invoke() {
            return bx9.j();
        }
    });

    public static final class a implements b {
        public final Handler a = new Handler(Looper.getMainLooper());
        public Runnable b;

        public static final void c(c74 c74Var) {
            c74Var.invoke();
        }

        @Override
        public void a(long j, final c74 c74Var) {
            y45.j(c74Var, "action");
            cancel();
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    bx9.a.c(c74Var);
                }
            };
            this.b = runnable;
            this.a.postDelayed(runnable, j);
        }

        @Override
        public void cancel() {
            Runnable runnable = this.b;
            if (runnable != null) {
                this.a.removeCallbacks(runnable);
            }
            this.b = null;
        }
    }

    public interface b {
        void a(long j, c74 c74Var);

        void cancel();
    }

    public static final zfb C(Ref$ObjectRef ref$ObjectRef) {
        Iterator it = ((List) ref$ObjectRef.element).iterator();
        while (it.hasNext()) {
            try {
                ((c74) it.next()).invoke();
            } catch (Throwable th) {
                a.u("deferred preload item failed", th);
            }
        }
        a.J();
        return zfb.a;
    }

    public static final zfb E() {
        a.B();
        return zfb.a;
    }

    public static final void F() {
        H(0L, 1, null);
    }

    public static final void G(long j2) {
        synchronized (h) {
            if (!e && !d && !b) {
                e = true;
                a.s().a(j2, new c74() {
                    @Override
                    public final Object invoke() {
                        return bx9.I();
                    }
                });
                zfb zfbVar = zfb.a;
            }
        }
    }

    public static void H(long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = 20000;
        }
        G(j2);
    }

    public static final zfb I() {
        a.y();
        return zfb.a;
    }

    public static final a j() {
        return new a();
    }

    public static final a k() {
        return new a();
    }

    public static final zfb l(final c74 c74Var) {
        y45.j(c74Var, "action");
        try {
            ThreadUtils.l().execute(new Runnable() {
                @Override
                public final void run() {
                    bx9.m(c74Var);
                }
            });
        } catch (Throwable th) {
            a.u("cached pool unavailable, using dedicated thread", th);
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    bx9.n(c74Var);
                }
            }, "startup-meta-preload").start();
        }
        return zfb.a;
    }

    public static final void m(c74 c74Var) {
        try {
            c74Var.invoke();
        } catch (Throwable th) {
            a.u("deferred preload failed", th);
        }
    }

    public static final void n(c74 c74Var) {
        try {
            c74Var.invoke();
        } catch (Throwable th) {
            a.u("deferred preload failed", th);
        }
    }

    public static final boolean t() {
        if (((Boolean) k.invoke()).booleanValue()) {
            return false;
        }
        return b || c;
    }

    public static final boolean w() {
        return y45.e(Looper.getMainLooper(), Looper.myLooper());
    }

    public static final void x() {
        synchronized (h) {
            bx9 bx9Var = a;
            bx9Var.s().cancel();
            b = true;
            bx9Var.v("markUiReady " + b);
            bx9Var.z();
            zfb zfbVar = zfb.a;
        }
    }

    public final void A(c74 c74Var) {
        y45.j(c74Var, "action");
        synchronized (h) {
            try {
                if (d) {
                    if (!g) {
                        j.add(c74Var);
                        a.D();
                    }
                    zfb zfbVar = zfb.a;
                } else {
                    i.add(c74Var);
                }
                c74Var = null;
                zfb zfbVar2 = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c74Var != null) {
            l.invoke(c74Var);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.util.ArrayList] */
    public final void B() {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (h) {
            List list = j;
            ref$ObjectRef.element = new ArrayList(list);
            list.clear();
            g = true;
            zfb zfbVar = zfb.a;
        }
        if (((List) ref$ObjectRef.element).isEmpty()) {
            J();
        } else {
            l.invoke(new c74() {
                @Override
                public final Object invoke() {
                    return bx9.C(ref$ObjectRef);
                }
            });
        }
    }

    public final void D() {
        if (f) {
            return;
        }
        f = true;
        r().a(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, new c74() {
            @Override
            public final Object invoke() {
                return bx9.E();
            }
        });
    }

    public final void J() {
        try {
            bya.f();
        } catch (Throwable th) {
            u("schedule warmup failed", th);
        }
    }

    public final a o() {
        return (a) p.getValue();
    }

    public final a p() {
        return (a) n.getValue();
    }

    public final e74 q() {
        return l;
    }

    public final b r() {
        b bVar = o;
        return bVar == null ? o() : bVar;
    }

    public final b s() {
        b bVar = m;
        return bVar == null ? p() : bVar;
    }

    public final void u(String str, Throwable th) {
        try {
            Log.e("StartupMediaMetaPolicy", str, th);
        } catch (Throwable unused) {
        }
    }

    public final void v(String str) {
        try {
            Log.i("StartupMediaMetaPolicy", str);
        } catch (Throwable unused) {
        }
    }

    public final void y() {
        synchronized (h) {
            if (!b && !d) {
                c = true;
                bx9 bx9Var = a;
                bx9Var.v("onTimeout " + c);
                bx9Var.z();
                zfb zfbVar = zfb.a;
            }
        }
    }

    public final void z() {
        if (!d) {
            d = true;
            List list = j;
            List list2 = i;
            list.addAll(list2);
            list2.clear();
        }
        D();
    }
}
