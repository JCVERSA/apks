package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class om5 {
    public final ey0 a;
    public final xn4 b;
    public final b c;
    public final CopyOnWriteArraySet d;
    public final ArrayDeque e;
    public final ArrayDeque f;
    public boolean g;

    public interface a {
        void invoke(Object obj);
    }

    public interface b {
        void a(Object obj, zx3 zx3Var);
    }

    public static final class c {
        public final Object a;
        public zx3.b b = new zx3.b();
        public boolean c;
        public boolean d;

        public c(Object obj) {
            this.a = obj;
        }

        public void a(int i, a aVar) {
            if (this.d) {
                return;
            }
            if (i != -1) {
                this.b.a(i);
            }
            this.c = true;
            aVar.invoke(this.a);
        }

        public void b(b bVar) {
            if (this.d || !this.c) {
                return;
            }
            zx3 zx3VarE = this.b.e();
            this.b = new zx3.b();
            this.c = false;
            bVar.a(this.a, zx3VarE);
        }

        public void c(b bVar) {
            this.d = true;
            if (this.c) {
                bVar.a(this.a, this.b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.a.equals(((c) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public om5(Looper looper, ey0 ey0Var, b bVar) {
        this(new CopyOnWriteArraySet(), looper, ey0Var, bVar);
    }

    public static void h(CopyOnWriteArraySet copyOnWriteArraySet, int i, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i, aVar);
        }
    }

    public void c(Object obj) {
        if (this.g) {
            return;
        }
        zi.e(obj);
        this.d.add(new c(obj));
    }

    public om5 d(Looper looper, ey0 ey0Var, b bVar) {
        return new om5(this.d, looper, ey0Var, bVar);
    }

    public om5 e(Looper looper, b bVar) {
        return d(looper, this.a, bVar);
    }

    public void f() {
        if (this.f.isEmpty()) {
            return;
        }
        if (!this.b.hasMessages(0)) {
            xn4 xn4Var = this.b;
            xn4Var.a(xn4Var.obtainMessage(0));
        }
        boolean zIsEmpty = this.e.isEmpty();
        this.e.addAll(this.f);
        this.f.clear();
        if (zIsEmpty) {
            while (!this.e.isEmpty()) {
                ((Runnable) this.e.peekFirst()).run();
                this.e.removeFirst();
            }
        }
    }

    public final boolean g(Message message) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.c);
            if (this.b.hasMessages(0)) {
                return true;
            }
        }
        return true;
    }

    public void i(final int i, final a aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() {
            @Override
            public final void run() {
                om5.h(copyOnWriteArraySet, i, aVar);
            }
        });
    }

    public void j() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.c);
        }
        this.d.clear();
        this.g = true;
    }

    public void k(Object obj) {
        for (c cVar : this.d) {
            if (cVar.a.equals(obj)) {
                cVar.c(this.c);
                this.d.remove(cVar);
            }
        }
    }

    public void l(int i, a aVar) {
        i(i, aVar);
        f();
    }

    public om5(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, ey0 ey0Var, b bVar) {
        this.a = ey0Var;
        this.d = copyOnWriteArraySet;
        this.c = bVar;
        this.e = new ArrayDeque();
        this.f = new ArrayDeque();
        this.b = ey0Var.createHandler(looper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.g(message);
            }
        });
    }
}
