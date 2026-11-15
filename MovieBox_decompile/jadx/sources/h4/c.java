package h4;

import j4.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public abstract class c implements g4.a {

    private final i4.g f61285a;

    private final List f61286b;

    private final List f61287c;

    private Object f61288d;

    private a f61289e;

    public interface a {
        void b(List list);

        void c(List list);
    }

    public c(i4.g tracker) {
        Intrinsics.h(tracker, "tracker");
        this.f61285a = tracker;
        this.f61286b = new ArrayList();
        this.f61287c = new ArrayList();
    }

    private final void h(a aVar, Object obj) {
        if (this.f61286b.isEmpty() || aVar == null) {
            return;
        }
        if (obj == null || c(obj)) {
            aVar.c(this.f61286b);
        } else {
            aVar.b(this.f61286b);
        }
    }

    @Override
    public void a(Object obj) {
        this.f61288d = obj;
        h(this.f61289e, obj);
    }

    public abstract boolean b(u uVar);

    public abstract boolean c(Object obj);

    public final boolean d(String workSpecId) {
        Intrinsics.h(workSpecId, "workSpecId");
        Object obj = this.f61288d;
        return obj != null && c(obj) && this.f61287c.contains(workSpecId);
    }

    public final void e(Iterable workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
        this.f61286b.clear();
        this.f61287c.clear();
        List list = this.f61286b;
        for (Object obj : workSpecs) {
            if (b((u) obj)) {
                list.add(obj);
            }
        }
        List list2 = this.f61286b;
        List list3 = this.f61287c;
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            list3.add(((u) it.next()).f62987a);
        }
        if (this.f61286b.isEmpty()) {
            this.f61285a.f(this);
        } else {
            this.f61285a.c(this);
        }
        h(this.f61289e, this.f61288d);
    }

    public final void f() {
        if (this.f61286b.isEmpty()) {
            return;
        }
        this.f61286b.clear();
        this.f61285a.f(this);
    }

    public final void g(a aVar) {
        if (this.f61289e != aVar) {
            this.f61289e = aVar;
            h(aVar, this.f61288d);
        }
    }
}
