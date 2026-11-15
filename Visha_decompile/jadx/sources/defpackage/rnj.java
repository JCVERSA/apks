package defpackage;

import android.os.Handler;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public final class rnj {
    public final int a;
    public final bnj b;
    public final CopyOnWriteArrayList c;

    public rnj(CopyOnWriteArrayList copyOnWriteArrayList, int i, bnj bnjVar) {
        this.c = copyOnWriteArrayList;
        this.a = 0;
        this.b = bnjVar;
    }

    public final rnj a(int i, bnj bnjVar) {
        return new rnj(this.c, 0, bnjVar);
    }

    public final void b(Handler handler, snj snjVar) {
        this.c.add(new qnj(handler, snjVar));
    }

    public final void c(final qfg qfgVar) {
        for (qnj qnjVar : this.c) {
            final snj snjVar = qnjVar.b;
            kfh.p(qnjVar.a, new Runnable() {
                @Override
                public final void run() {
                    qfgVar.zza(snjVar);
                }
            });
        }
    }

    public final void d(final xmj xmjVar) {
        c(new qfg() {
            @Override
            public final void zza(Object obj) {
                ((snj) obj).O(0, this.a.b, xmjVar);
            }
        });
    }

    public final void e(final smj smjVar, final xmj xmjVar) {
        c(new qfg() {
            @Override
            public final void zza(Object obj) {
                ((snj) obj).Q(0, this.a.b, smjVar, xmjVar);
            }
        });
    }

    public final void f(final smj smjVar, final xmj xmjVar) {
        c(new qfg() {
            @Override
            public final void zza(Object obj) {
                ((snj) obj).L(0, this.a.b, smjVar, xmjVar);
            }
        });
    }

    public final void g(final smj smjVar, final xmj xmjVar, final IOException iOException, final boolean z) {
        c(new qfg() {
            @Override
            public final void zza(Object obj) {
                ((snj) obj).t(0, this.a.b, smjVar, xmjVar, iOException, z);
            }
        });
    }

    public final void h(final smj smjVar, final xmj xmjVar, final int i) {
        c(new qfg() {
            @Override
            public final void zza(Object obj) {
                ((snj) obj).G(0, this.a.b, smjVar, xmjVar, i);
            }
        });
    }

    public final void i(snj snjVar) {
        CopyOnWriteArrayList<qnj> copyOnWriteArrayList = this.c;
        for (qnj qnjVar : copyOnWriteArrayList) {
            if (qnjVar.b == snjVar) {
                copyOnWriteArrayList.remove(qnjVar);
            }
        }
    }

    public rnj() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
