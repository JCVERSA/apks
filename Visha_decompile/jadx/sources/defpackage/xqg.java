package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import defpackage.iog;
import defpackage.ypg;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class xqg {
    public final tbg a;
    public final olg b;
    public final yog c;
    public final CopyOnWriteArraySet d;
    public final ArrayDeque e;
    public final ArrayDeque f;
    public final Object g;
    public boolean h;
    public boolean i;

    public xqg(Looper looper, tbg tbgVar, yog yogVar) {
        this(new CopyOnWriteArraySet(), looper, tbgVar, yogVar, true);
    }

    public static boolean g(xqg xqgVar, Message message) {
        Iterator it = xqgVar.d.iterator();
        while (it.hasNext()) {
            ((ypg) it.next()).b(xqgVar.c);
            if (xqgVar.b.zzh(1)) {
                break;
            }
        }
        return true;
    }

    public final xqg a(Looper looper, yog yogVar) {
        return new xqg(this.d, looper, this.a, yogVar, this.i);
    }

    public final void b(Object obj) {
        synchronized (this.g) {
            try {
                if (this.h) {
                    return;
                }
                this.d.add(new ypg(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        h();
        ArrayDeque arrayDeque = this.f;
        if (arrayDeque.isEmpty()) {
            return;
        }
        olg olgVar = this.b;
        if (!olgVar.zzh(1)) {
            olgVar.c(olgVar.zzb(1));
        }
        ArrayDeque arrayDeque2 = this.e;
        boolean zIsEmpty = arrayDeque2.isEmpty();
        arrayDeque2.addAll(arrayDeque);
        arrayDeque.clear();
        if (zIsEmpty) {
            while (!arrayDeque2.isEmpty()) {
                ((Runnable) arrayDeque2.peekFirst()).run();
                arrayDeque2.removeFirst();
            }
        }
    }

    public final void d(final int i, final iog iogVar) {
        h();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() {
            @Override
            public final void run() {
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    iog iogVar2 = iogVar;
                    ((ypg) it.next()).a(i, iogVar2);
                }
            }
        });
    }

    public final void e() {
        h();
        synchronized (this.g) {
            this.h = true;
        }
        CopyOnWriteArraySet copyOnWriteArraySet = this.d;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((ypg) it.next()).c(this.c);
        }
        copyOnWriteArraySet.clear();
    }

    public final void f(Object obj) {
        h();
        CopyOnWriteArraySet<ypg> copyOnWriteArraySet = this.d;
        for (ypg ypgVar : copyOnWriteArraySet) {
            if (ypgVar.a.equals(obj)) {
                ypgVar.c(this.c);
                copyOnWriteArraySet.remove(ypgVar);
            }
        }
    }

    public final void h() {
        if (this.i) {
            n7g.f(Thread.currentThread() == this.b.zza().getThread());
        }
    }

    public xqg(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, tbg tbgVar, yog yogVar, boolean z) {
        this.a = tbgVar;
        this.d = copyOnWriteArraySet;
        this.c = yogVar;
        this.g = new Object();
        this.e = new ArrayDeque();
        this.f = new ArrayDeque();
        this.b = tbgVar.a(looper, new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                xqg.g(this.b, message);
                return true;
            }
        });
        this.i = z;
    }
}
