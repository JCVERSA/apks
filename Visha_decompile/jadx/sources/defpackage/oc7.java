package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class oc7 extends n3 {
    public final t74 c;
    public final Callable d;

    public static final class a extends id0 {
        public final Collection g;
        public final t74 h;

        public a(pd7 pd7Var, t74 t74Var, Collection collection) {
            super(pd7Var);
            this.h = t74Var;
            this.g = collection;
        }

        @Override
        public void clear() {
            this.g.clear();
            super.clear();
        }

        @Override
        public void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            this.g.clear();
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (this.e) {
                yw8.s(th);
                return;
            }
            this.e = true;
            this.g.clear();
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            if (this.e) {
                return;
            }
            if (this.f != 0) {
                this.b.onNext(null);
                return;
            }
            try {
                if (this.g.add(ac7.d(this.h.apply(obj), "The keySelector returned a null key"))) {
                    this.b.onNext(obj);
                }
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override
        public Object poll() {
            Object objPoll;
            do {
                objPoll = this.d.poll();
                if (objPoll == null) {
                    break;
                }
            } while (!this.g.add(ac7.d(this.h.apply(objPoll), "The keySelector returned a null key")));
            return objPoll;
        }

        @Override
        public int requestFusion(int i) {
            return d(i);
        }
    }

    public oc7(ld7 ld7Var, t74 t74Var, Callable callable) {
        super(ld7Var);
        this.c = t74Var;
        this.d = callable;
    }

    @Override
    public void c0(pd7 pd7Var) {
        try {
            this.b.subscribe(new a(pd7Var, this.c, (Collection) ac7.d(this.d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            re3.b(th);
            EmptyDisposable.error(th, pd7Var);
        }
    }
}
