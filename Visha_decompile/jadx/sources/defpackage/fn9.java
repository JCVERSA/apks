package defpackage;

import io.reactivex.disposables.a;

public final class fn9 extends xm9 {
    public final Object a;

    public fn9(Object obj) {
        this.a = obj;
    }

    @Override
    public void q(in9 in9Var) {
        in9Var.onSubscribe(a.a());
        in9Var.onSuccess(this.a);
    }
}
