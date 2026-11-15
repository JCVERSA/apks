package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.as0;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class as0<T> {
    private final jp a;
    private final hf0 b;
    private final b<T> c;
    private final CopyOnWriteArraySet<c<T>> d;
    private final ArrayDeque<Runnable> e;
    private final ArrayDeque<Runnable> f;
    private boolean g;

    public interface a<T> {
        void invoke(T t);
    }

    public interface b<T> {
        void a(T t, bc0 bc0Var);
    }

    public static final class c<T> {
        public final T a;
        private bc0.a b = new bc0.a();
        private boolean c;
        private boolean d;

        public c(T t) {
            this.a = t;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.a.equals(((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    public as0(Looper looper, jp jpVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, jpVar, bVar);
    }

    public final void a(T t) {
        if (this.g) {
            return;
        }
        t.getClass();
        this.d.add(new c<>(t));
    }

    private as0(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, jp jpVar, b<T> bVar) {
        this.a = jpVar;
        this.d = copyOnWriteArraySet;
        this.c = bVar;
        this.e = new ArrayDeque<>();
        this.f = new ArrayDeque<>();
        this.b = jpVar.a(looper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.a(message);
            }
        });
    }

    public final void b() {
        for (c<T> cVar : this.d) {
            b<T> bVar = this.c;
            ((c) cVar).d = true;
            if (((c) cVar).c) {
                bVar.a(cVar.a, ((c) cVar).b.a());
            }
        }
        this.d.clear();
        this.g = true;
    }

    @CheckResult
    public final as0<T> a(Looper looper, b<T> bVar) {
        return new as0<>(this.d, looper, this.a, bVar);
    }

    public final void a() {
        if (this.f.isEmpty()) {
            return;
        }
        if (!this.b.b()) {
            hf0 hf0Var = this.b;
            hf0Var.a(hf0Var.b(0));
        }
        boolean zIsEmpty = this.e.isEmpty();
        this.e.addAll(this.f);
        this.f.clear();
        if (zIsEmpty) {
            while (!this.e.isEmpty()) {
                this.e.peekFirst().run();
                this.e.removeFirst();
            }
        }
    }

    public final void b(T t) {
        for (c<T> cVar : this.d) {
            if (cVar.a.equals(t)) {
                b<T> bVar = this.c;
                ((c) cVar).d = true;
                if (((c) cVar).c) {
                    bVar.a(cVar.a, ((c) cVar).b.a());
                }
                this.d.remove(cVar);
            }
        }
    }

    public boolean a(Message message) {
        for (c<T> cVar : this.d) {
            b<T> bVar = this.c;
            if (!((c) cVar).d && ((c) cVar).c) {
                bc0 bc0VarA = ((c) cVar).b.a();
                ((c) cVar).b = new bc0.a();
                ((c) cVar).c = false;
                bVar.a(cVar.a, bc0VarA);
            }
            if (this.b.b()) {
                return true;
            }
        }
        return true;
    }

    public static void a(CopyOnWriteArraySet copyOnWriteArraySet, int i, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (!cVar.d) {
                if (i != -1) {
                    cVar.b.a(i);
                }
                cVar.c = true;
                aVar.invoke(cVar.a);
            }
        }
    }

    public final void a(final int i, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() {
            @Override
            public final void run() {
                as0.a(copyOnWriteArraySet, i, aVar);
            }
        });
    }
}
