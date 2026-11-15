package defpackage;

import kotlin.coroutines.d;

public final class l23 implements d {
    public final d b;
    public final Throwable c;

    public l23(Throwable th, d dVar) {
        this.b = dVar;
        this.c = th;
    }

    @Override
    public Object fold(Object obj, s74 s74Var) {
        return this.b.fold(obj, s74Var);
    }

    @Override
    public d.b get(d.c cVar) {
        return this.b.get(cVar);
    }

    @Override
    public d minusKey(d.c cVar) {
        return this.b.minusKey(cVar);
    }

    @Override
    public d plus(d dVar) {
        return this.b.plus(dVar);
    }
}
