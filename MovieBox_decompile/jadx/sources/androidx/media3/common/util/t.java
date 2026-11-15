package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class t {

    private final i f10135a;

    private final p f10136b;

    private final b f10137c;

    private final CopyOnWriteArraySet f10138d;

    private final ArrayDeque f10139e;

    private final ArrayDeque f10140f;

    private final Object f10141g;

    private boolean f10142h;

    private boolean f10143i;

    public interface a {
        void invoke(Object obj);
    }

    public interface b {
        void a(Object obj, androidx.media3.common.p pVar);
    }

    private static final class c {

        public final Object f10144a;

        private androidx.media3.common.p.b f10145b = new androidx.media3.common.p.b();

        private boolean f10146c;

        private boolean f10147d;

        public c(Object obj) {
            this.f10144a = obj;
        }

        public void a(int i10, a aVar) {
            if (this.f10147d) {
                return;
            }
            if (i10 != -1) {
                this.f10145b.a(i10);
            }
            this.f10146c = true;
            aVar.invoke(this.f10144a);
        }

        public void b(b bVar) {
            if (this.f10147d || !this.f10146c) {
                return;
            }
            androidx.media3.common.p pVarE = this.f10145b.e();
            this.f10145b = new androidx.media3.common.p.b();
            this.f10146c = false;
            bVar.a(this.f10144a, pVarE);
        }

        public void c(b bVar) {
            this.f10147d = true;
            if (this.f10146c) {
                this.f10146c = false;
                bVar.a(this.f10144a, this.f10145b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f10144a.equals(((c) obj).f10144a);
        }

        public int hashCode() {
            return this.f10144a.hashCode();
        }
    }

    public t(Looper looper, i iVar, b bVar) {
        this(new CopyOnWriteArraySet(), looper, iVar, bVar, true);
    }

    public boolean g(Message message) {
        Iterator it = this.f10138d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.f10137c);
            if (this.f10136b.a(1)) {
                break;
            }
        }
        return true;
    }

    public static void h(CopyOnWriteArraySet copyOnWriteArraySet, int i10, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i10, aVar);
        }
    }

    private void m() {
        if (this.f10143i) {
            androidx.media3.common.util.a.g(Thread.currentThread() == this.f10136b.getLooper().getThread());
        }
    }

    public void c(Object obj) {
        androidx.media3.common.util.a.e(obj);
        synchronized (this.f10141g) {
            try {
                if (this.f10142h) {
                    return;
                }
                this.f10138d.add(new c(obj));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public t d(Looper looper, i iVar, b bVar) {
        return new t(this.f10138d, looper, iVar, bVar, this.f10143i);
    }

    public t e(Looper looper, b bVar) {
        return d(looper, this.f10135a, bVar);
    }

    public void f() {
        m();
        if (this.f10140f.isEmpty()) {
            return;
        }
        if (!this.f10136b.a(1)) {
            p pVar = this.f10136b;
            pVar.b(pVar.obtainMessage(1));
        }
        boolean zIsEmpty = this.f10139e.isEmpty();
        this.f10139e.addAll(this.f10140f);
        this.f10140f.clear();
        if (zIsEmpty) {
            while (!this.f10139e.isEmpty()) {
                ((Runnable) this.f10139e.peekFirst()).run();
                this.f10139e.removeFirst();
            }
        }
    }

    public void i(final int i10, final a aVar) {
        m();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f10138d);
        this.f10140f.add(new Runnable() {
            @Override
            public final void run() {
                t.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        m();
        synchronized (this.f10141g) {
            this.f10142h = true;
        }
        Iterator it = this.f10138d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.f10137c);
        }
        this.f10138d.clear();
    }

    public void k(Object obj) {
        m();
        for (c cVar : this.f10138d) {
            if (cVar.f10144a.equals(obj)) {
                cVar.c(this.f10137c);
                this.f10138d.remove(cVar);
            }
        }
    }

    public void l(int i10, a aVar) {
        i(i10, aVar);
        f();
    }

    private t(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, i iVar, b bVar, boolean z10) {
        this.f10135a = iVar;
        this.f10138d = copyOnWriteArraySet;
        this.f10137c = bVar;
        this.f10141g = new Object();
        this.f10139e = new ArrayDeque();
        this.f10140f = new ArrayDeque();
        this.f10136b = iVar.createHandler(looper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.f10131a.g(message);
            }
        });
        this.f10143i = z10;
    }
}
