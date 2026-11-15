package defpackage;

import kotlin.coroutines.d;

public final class wv9 implements wh1, ok1 {
    public final wh1 b;
    public final d c;

    public wv9(wh1 wh1Var, d dVar) {
        this.b = wh1Var;
        this.c = dVar;
    }

    @Override
    public ok1 getCallerFrame() {
        wh1 wh1Var = this.b;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    @Override
    public d getContext() {
        return this.c;
    }

    @Override
    public void resumeWith(Object obj) {
        this.b.resumeWith(obj);
    }
}
