package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class r {

    private final e f26870a;

    private final o f26871b;

    private final b f26872c;

    private final CopyOnWriteArraySet f26873d;

    private final ArrayDeque f26874e;

    private final ArrayDeque f26875f;

    private boolean f26876g;

    public interface a {
        void invoke(Object obj);
    }

    public interface b {
        void a(Object obj, m mVar);
    }

    private static final class c {

        public final Object f26877a;

        private m.b f26878b = new m.b();

        private boolean f26879c;

        private boolean f26880d;

        public c(Object obj) {
            this.f26877a = obj;
        }

        public void a(int i10, a aVar) {
            if (this.f26880d) {
                return;
            }
            if (i10 != -1) {
                this.f26878b.a(i10);
            }
            this.f26879c = true;
            aVar.invoke(this.f26877a);
        }

        public void b(b bVar) {
            if (this.f26880d || !this.f26879c) {
                return;
            }
            m mVarE = this.f26878b.e();
            this.f26878b = new m.b();
            this.f26879c = false;
            bVar.a(this.f26877a, mVarE);
        }

        public void c(b bVar) {
            this.f26880d = true;
            if (this.f26879c) {
                bVar.a(this.f26877a, this.f26878b.e());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f26877a.equals(((c) obj).f26877a);
        }

        public int hashCode() {
            return this.f26877a.hashCode();
        }
    }

    public r(Looper looper, e eVar, b bVar) {
        this(new CopyOnWriteArraySet(), looper, eVar, bVar);
    }

    public boolean g(Message message) {
        Iterator it = this.f26873d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.f26872c);
            if (this.f26871b.a(0)) {
                return true;
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

    public void c(Object obj) {
        if (this.f26876g) {
            return;
        }
        com.google.android.exoplayer2.util.a.e(obj);
        this.f26873d.add(new c(obj));
    }

    public r d(Looper looper, e eVar, b bVar) {
        return new r(this.f26873d, looper, eVar, bVar);
    }

    public r e(Looper looper, b bVar) {
        return d(looper, this.f26870a, bVar);
    }

    public void f() {
        if (this.f26875f.isEmpty()) {
            return;
        }
        if (!this.f26871b.a(0)) {
            o oVar = this.f26871b;
            oVar.b(oVar.obtainMessage(0));
        }
        boolean zIsEmpty = this.f26874e.isEmpty();
        this.f26874e.addAll(this.f26875f);
        this.f26875f.clear();
        if (zIsEmpty) {
            while (!this.f26874e.isEmpty()) {
                ((Runnable) this.f26874e.peekFirst()).run();
                this.f26874e.removeFirst();
            }
        }
    }

    public void i(final int i10, final a aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f26873d);
        this.f26875f.add(new Runnable() {
            @Override
            public final void run() {
                r.h(copyOnWriteArraySet, i10, aVar);
            }
        });
    }

    public void j() {
        Iterator it = this.f26873d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).c(this.f26872c);
        }
        this.f26873d.clear();
        this.f26876g = true;
    }

    public void k(Object obj) {
        for (c cVar : this.f26873d) {
            if (cVar.f26877a.equals(obj)) {
                cVar.c(this.f26872c);
                this.f26873d.remove(cVar);
            }
        }
    }

    public void l(int i10, a aVar) {
        i(i10, aVar);
        f();
    }

    private r(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, e eVar, b bVar) {
        this.f26870a = eVar;
        this.f26873d = copyOnWriteArraySet;
        this.f26872c = bVar;
        this.f26874e = new ArrayDeque();
        this.f26875f = new ArrayDeque();
        this.f26871b = eVar.createHandler(looper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.f26869a.g(message);
            }
        });
    }
}
