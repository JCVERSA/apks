package kotlin.coroutines;

import defpackage.s74;
import defpackage.y45;

public abstract class a implements d.b {
    private final d.c key;

    public a(d.c cVar) {
        y45.j(cVar, "key");
        this.key = cVar;
    }

    @Override
    public <R> R fold(R r, s74 s74Var) {
        return (R) d.b.a.a(this, r, s74Var);
    }

    @Override
    public <E extends d.b> E get(d.c cVar) {
        return (E) d.b.a.b(this, cVar);
    }

    @Override
    public d.c getKey() {
        return this.key;
    }

    @Override
    public d minusKey(d.c cVar) {
        return d.b.a.c(this, cVar);
    }

    @Override
    public d plus(d dVar) {
        return d.b.a.d(this, dVar);
    }
}
