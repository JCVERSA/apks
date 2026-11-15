package defpackage;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;

public abstract class jmj extends ulj {
    public final HashMap h = new HashMap();
    public Handler i;
    public ixi j;

    public long A(Object obj, long j, bnj bnjVar) {
        return j;
    }

    public abstract bnj B(Object obj, bnj bnjVar);

    @Override
    public final void r() {
        for (imj imjVar : this.h.values()) {
            imjVar.a.g(imjVar.b);
        }
    }

    @Override
    public final void s() {
        for (imj imjVar : this.h.values()) {
            imjVar.a.e(imjVar.b);
        }
    }

    @Override
    public void t(ixi ixiVar) {
        this.j = ixiVar;
        this.i = kfh.T(null);
    }

    @Override
    public void v() {
        HashMap map = this.h;
        for (imj imjVar : map.values()) {
            knj knjVar = imjVar.a;
            knjVar.c(imjVar.b);
            hmj hmjVar = imjVar.c;
            knjVar.j(hmjVar);
            knjVar.a(hmjVar);
        }
        map.clear();
    }

    public abstract void x(Object obj, knj knjVar, w4f w4fVar);

    public final void y(final Object obj, knj knjVar) {
        HashMap map = this.h;
        n7g.d(!map.containsKey(obj));
        cnj cnjVar = new cnj() {
            @Override
            public final void a(knj knjVar2, w4f w4fVar) {
                this.a.x(obj, knjVar2, w4fVar);
            }
        };
        hmj hmjVar = new hmj(this, obj);
        map.put(obj, new imj(knjVar, cnjVar, hmjVar));
        Handler handler = this.i;
        handler.getClass();
        knjVar.l(handler, hmjVar);
        Handler handler2 = this.i;
        handler2.getClass();
        knjVar.d(handler2, hmjVar);
        knjVar.f(cnjVar, this.j, m());
        if (w()) {
            return;
        }
        knjVar.g(cnjVar);
    }

    public int z(Object obj, int i) {
        return 0;
    }

    @Override
    public void zzz() {
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            ((imj) it.next()).a.zzz();
        }
    }
}
