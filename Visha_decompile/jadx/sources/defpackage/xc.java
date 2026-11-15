package defpackage;

import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.view.Choreographer;
import java.util.ArrayList;

public final class xc {
    public static final ThreadLocal h = new ThreadLocal();
    public d e;
    public final ArrayMap a = new ArrayMap();
    public final ArrayList b = new ArrayList();
    public final a c = new a();
    public final Runnable d = new Runnable() {
        @Override
        public final void run() {
            this.b.k();
        }
    };
    public long f = 0;
    public boolean g = false;

    public class a {
        public void a() {
            xc.this.f = xc.i();
            xc xcVar = xc.this;
            xcVar.g(xcVar.f);
            if (xc.this.b.size() > 0) {
                xc.this.e.a(xc.this.d);
            }
        }

        public a() {
        }
    }

    public interface b {
        boolean doAnimationFrame(long j);
    }

    public static final class c implements d {
        public final Choreographer a = Choreographer.getInstance();
        public final Looper b = Looper.myLooper();

        @Override
        public void a(final Runnable runnable) {
            this.a.postFrameCallback(new Choreographer.FrameCallback() {
                @Override
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }
    }

    public interface d {
        void a(Runnable runnable);
    }

    public xc(d dVar) {
        this.e = dVar;
    }

    public static xc h() {
        ThreadLocal threadLocal = h;
        if (threadLocal.get() == null) {
            threadLocal.set(new xc(new c()));
        }
        return (xc) threadLocal.get();
    }

    public static long i() {
        return Build.VERSION.SDK_INT >= 35 ? SystemClock.uptimeNanos() : SystemClock.uptimeMillis() * 1000000;
    }

    public void e(b bVar, long j) {
        if (this.b.size() == 0) {
            this.e.a(this.d);
        }
        if (!this.b.contains(bVar)) {
            this.b.add(bVar);
        }
        if (j > 0) {
            this.a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    public final void f() {
        if (this.g) {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                if (this.b.get(size) == null) {
                    this.b.remove(size);
                }
            }
            this.g = false;
        }
    }

    public void g(long j) {
        long jI = i();
        for (int i = 0; i < this.b.size(); i++) {
            b bVar = (b) this.b.get(i);
            if (bVar != null && j(bVar, jI)) {
                bVar.doAnimationFrame(j);
            }
        }
        f();
    }

    public final boolean j(b bVar, long j) {
        Long l = (Long) this.a.get(bVar);
        if (l == null) {
            return true;
        }
        if (l.longValue() >= j) {
            return false;
        }
        this.a.remove(bVar);
        return true;
    }

    public final void k() {
        this.c.a();
    }

    public void l(b bVar) {
        this.a.remove(bVar);
        int iIndexOf = this.b.indexOf(bVar);
        if (iIndexOf >= 0) {
            this.b.set(iIndexOf, null);
            this.g = true;
        }
    }
}
