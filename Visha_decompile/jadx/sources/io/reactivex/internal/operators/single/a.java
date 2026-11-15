package io.reactivex.internal.operators.single;

import defpackage.ac7;
import defpackage.in9;
import defpackage.mn9;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import defpackage.xm9;

public final class a extends xm9 {
    public final mn9 a;
    public final t74 b;

    public static final class C0366a implements in9 {
        public final in9 b;
        public final t74 c;

        public C0366a(in9 in9Var, t74 t74Var) {
            this.b = in9Var;
            this.c = t74Var;
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.b.onSubscribe(rc2Var);
        }

        @Override
        public void onSuccess(Object obj) {
            try {
                this.b.onSuccess(ac7.d(this.c.apply(obj), "The mapper function returned a null value."));
            } catch (Throwable th) {
                re3.b(th);
                onError(th);
            }
        }
    }

    public a(mn9 mn9Var, t74 t74Var) {
        this.a = mn9Var;
        this.b = t74Var;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.a(new C0366a(in9Var, this.b));
    }
}
