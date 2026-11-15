package androidx.dynamicanimation.animation;

import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.x0;
import java.util.ArrayList;

class a {

    public static final ThreadLocal f8668g = new ThreadLocal();

    private c f8672d;

    private final x0 f8669a = new x0();

    final ArrayList f8670b = new ArrayList();

    private final C0069a f8671c = new C0069a();

    long f8673e = 0;

    private boolean f8674f = false;

    class C0069a {
        C0069a() {
        }

        void a() {
            a.this.f8673e = SystemClock.uptimeMillis();
            a aVar = a.this;
            aVar.c(aVar.f8673e);
            if (a.this.f8670b.size() > 0) {
                a.this.e().a();
            }
        }
    }

    interface b {
        boolean a(long j10);
    }

    static abstract class c {

        final C0069a f8676a;

        c(C0069a c0069a) {
            this.f8676a = c0069a;
        }

        abstract void a();
    }

    static class d extends c {

        long f8677b;
    }

    private static class e extends c {

        private final Choreographer f8678b;

        private final Choreographer.FrameCallback f8679c;

        class ChoreographerFrameCallbackC0070a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0070a() {
            }

            @Override
            public void doFrame(long j10) {
                e.this.f8676a.a();
            }
        }

        e(C0069a c0069a) {
            super(c0069a);
            this.f8678b = Choreographer.getInstance();
            this.f8679c = new ChoreographerFrameCallbackC0070a();
        }

        @Override
        void a() {
            this.f8678b.postFrameCallback(this.f8679c);
        }
    }

    a() {
    }

    private void b() {
        if (this.f8674f) {
            for (int size = this.f8670b.size() - 1; size >= 0; size--) {
                if (this.f8670b.get(size) == null) {
                    this.f8670b.remove(size);
                }
            }
            this.f8674f = false;
        }
    }

    public static a d() {
        ThreadLocal threadLocal = f8668g;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return (a) threadLocal.get();
    }

    private boolean f(b bVar, long j10) {
        Long l10 = (Long) this.f8669a.get(bVar);
        if (l10 == null) {
            return true;
        }
        if (l10.longValue() >= j10) {
            return false;
        }
        this.f8669a.remove(bVar);
        return true;
    }

    public void a(b bVar, long j10) {
        if (this.f8670b.size() == 0) {
            e().a();
        }
        if (!this.f8670b.contains(bVar)) {
            this.f8670b.add(bVar);
        }
        if (j10 > 0) {
            this.f8669a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j10));
        }
    }

    void c(long j10) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i10 = 0; i10 < this.f8670b.size(); i10++) {
            b bVar = (b) this.f8670b.get(i10);
            if (bVar != null && f(bVar, jUptimeMillis)) {
                bVar.a(j10);
            }
        }
        b();
    }

    c e() {
        if (this.f8672d == null) {
            this.f8672d = new e(this.f8671c);
        }
        return this.f8672d;
    }

    public void g(b bVar) {
        this.f8669a.remove(bVar);
        int iIndexOf = this.f8670b.indexOf(bVar);
        if (iIndexOf >= 0) {
            this.f8670b.set(iIndexOf, null);
            this.f8674f = true;
        }
    }
}
