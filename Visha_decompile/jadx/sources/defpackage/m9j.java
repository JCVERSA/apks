package defpackage;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class m9j {
    public final tfj a;
    public final j9j e;
    public final qaj h;
    public final olg i;
    public boolean j;
    public ixi k;
    public bpj l = new bpj(0);
    public final IdentityHashMap c = new IdentityHashMap();
    public final Map d = new HashMap();
    public final List b = new ArrayList();
    public final HashMap f = new HashMap();
    public final Set g = new HashSet();

    public m9j(j9j j9jVar, qaj qajVar, olg olgVar, tfj tfjVar) {
        this.a = tfjVar;
        this.e = j9jVar;
        this.h = qajVar;
        this.i = olgVar;
    }

    public final int a() {
        return this.b.size();
    }

    public final w4f b() {
        List list = this.b;
        if (list.isEmpty()) {
            return w4f.a;
        }
        int iC = 0;
        for (int i = 0; i < list.size(); i++) {
            h9j h9jVar = (h9j) list.get(i);
            h9jVar.d = iC;
            iC += h9jVar.a.F().c();
        }
        return new v9j(list, this.l);
    }

    public final w4f c(int i, int i2, List list) {
        n7g.d(i >= 0 && i <= i2 && i2 <= a());
        n7g.d(list.size() == i2 - i);
        for (int i3 = i; i3 < i2; i3++) {
            ((h9j) this.b.get(i3)).a.i((cme) list.get(i3 - i));
        }
        return b();
    }

    public final void g(ixi ixiVar) {
        n7g.f(!this.j);
        this.k = ixiVar;
        int i = 0;
        while (true) {
            List list = this.b;
            if (i >= list.size()) {
                this.j = true;
                return;
            }
            h9j h9jVar = (h9j) list.get(i);
            u(h9jVar);
            this.g.add(h9jVar);
            i++;
        }
    }

    public final void h() {
        for (f9j f9jVar : this.f.values()) {
            try {
                f9jVar.a.c(f9jVar.b);
            } catch (RuntimeException e) {
                zrg.d("MediaSourceList", "Failed to release child source.", e);
            }
            knj knjVar = f9jVar.a;
            d9j d9jVar = f9jVar.c;
            knjVar.j(d9jVar);
            knjVar.a(d9jVar);
        }
        this.f.clear();
        this.g.clear();
        this.j = false;
    }

    public final void i(zmj zmjVar) {
        IdentityHashMap identityHashMap = this.c;
        h9j h9jVar = (h9j) identityHashMap.remove(zmjVar);
        h9jVar.getClass();
        h9jVar.a.h(zmjVar);
        h9jVar.c.remove(((tmj) zmjVar).b);
        if (!identityHashMap.isEmpty()) {
            s();
        }
        t(h9jVar);
    }

    public final boolean j() {
        return this.j;
    }

    public final w4f k(int i, List list, bpj bpjVar) {
        if (!list.isEmpty()) {
            this.l = bpjVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                h9j h9jVar = (h9j) list.get(i2 - i);
                if (i2 > 0) {
                    h9j h9jVar2 = (h9j) this.b.get(i2 - 1);
                    h9jVar.a(h9jVar2.d + h9jVar2.a.F().c());
                } else {
                    h9jVar.a(0);
                }
                q(i2, h9jVar.a.F().c());
                this.b.add(i2, h9jVar);
                this.d.put(h9jVar.b, h9jVar);
                if (this.j) {
                    u(h9jVar);
                    if (this.c.isEmpty()) {
                        this.g.add(h9jVar);
                    } else {
                        r(h9jVar);
                    }
                }
            }
        }
        return b();
    }

    public final w4f l(int i, int i2, bpj bpjVar) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= a()) {
            z = true;
        }
        n7g.d(z);
        this.l = bpjVar;
        v(i, i2);
        return b();
    }

    public final w4f m(List list, bpj bpjVar) {
        List list2 = this.b;
        v(0, list2.size());
        return k(list2.size(), list, bpjVar);
    }

    public final w4f n(bpj bpjVar) {
        int iA = a();
        if (bpjVar.c() != iA) {
            bpjVar = bpjVar.f().g(0, iA);
        }
        this.l = bpjVar;
        return b();
    }

    public final zmj o(bnj bnjVar, nrj nrjVar, long j) {
        int i = v9j.k;
        Pair pair = (Pair) bnjVar.a;
        Object obj = pair.first;
        bnj bnjVarA = bnjVar.a(pair.second);
        h9j h9jVar = (h9j) this.d.get(obj);
        h9jVar.getClass();
        this.g.add(h9jVar);
        f9j f9jVar = (f9j) this.f.get(h9jVar);
        if (f9jVar != null) {
            f9jVar.a.e(f9jVar.b);
        }
        h9jVar.c.add(bnjVarA);
        tmj tmjVarB = h9jVar.a.b(bnjVarA, nrjVar, j);
        this.c.put(tmjVarB, h9jVar);
        s();
        return tmjVarB;
    }

    public final bpj p() {
        return this.l;
    }

    public final void q(int i, int i2) {
        while (true) {
            List list = this.b;
            if (i >= list.size()) {
                return;
            }
            ((h9j) list.get(i)).d += i2;
            i++;
        }
    }

    public final void r(h9j h9jVar) {
        f9j f9jVar = (f9j) this.f.get(h9jVar);
        if (f9jVar != null) {
            f9jVar.a.g(f9jVar.b);
        }
    }

    public final void s() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            h9j h9jVar = (h9j) it.next();
            if (h9jVar.c.isEmpty()) {
                r(h9jVar);
                it.remove();
            }
        }
    }

    public final void t(h9j h9jVar) {
        if (h9jVar.e && h9jVar.c.isEmpty()) {
            f9j f9jVar = (f9j) this.f.remove(h9jVar);
            f9jVar.getClass();
            knj knjVar = f9jVar.a;
            knjVar.c(f9jVar.b);
            d9j d9jVar = f9jVar.c;
            knjVar.j(d9jVar);
            knjVar.a(d9jVar);
            this.g.remove(h9jVar);
        }
    }

    public final void u(h9j h9jVar) {
        wmj wmjVar = h9jVar.a;
        cnj cnjVar = new cnj() {
            @Override
            public final void a(knj knjVar, w4f w4fVar) {
                this.a.e.zzk();
            }
        };
        d9j d9jVar = new d9j(this, h9jVar);
        this.f.put(h9jVar, new f9j(wmjVar, cnjVar, d9jVar));
        wmjVar.l(new Handler(kfh.U(), null), d9jVar);
        wmjVar.d(new Handler(kfh.U(), null), d9jVar);
        wmjVar.f(cnjVar, this.k, this.a);
    }

    public final void v(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            h9j h9jVar = (h9j) this.b.remove(i2);
            this.d.remove(h9jVar.b);
            q(i2, -h9jVar.a.F().c());
            h9jVar.e = true;
            if (this.j) {
                t(h9jVar);
            }
        }
    }
}
