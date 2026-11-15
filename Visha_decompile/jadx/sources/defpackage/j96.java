package defpackage;

import io.reactivex.disposables.a;

public final class j96 extends b96 implements m19 {
    public final Object b;

    public j96(Object obj) {
        this.b = obj;
    }

    @Override
    public Object call() {
        return this.b;
    }

    @Override
    public void j(k96 k96Var) {
        k96Var.onSubscribe(a.a());
        k96Var.onSuccess(this.b);
    }
}
