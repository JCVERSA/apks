package kotlin.coroutines;

import defpackage.e74;
import defpackage.y45;

public abstract class b implements d.c {
    public final e74 b;
    public final d.c c;

    public b(d.c cVar, e74 e74Var) {
        y45.j(cVar, "baseKey");
        y45.j(e74Var, "safeCast");
        this.b = e74Var;
        this.c = cVar instanceof b ? ((b) cVar).c : cVar;
    }

    public final boolean a(d.c cVar) {
        y45.j(cVar, "key");
        return cVar == this || this.c == cVar;
    }

    public final d.b b(d.b bVar) {
        y45.j(bVar, "element");
        return (d.b) this.b.invoke(bVar);
    }
}
