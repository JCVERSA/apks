package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class nd7 extends xm9 {
    public final ld7 a;
    public final Callable b;

    public static final class a implements pd7, rc2 {
        public final in9 b;
        public Collection c;
        public rc2 d;

        public a(in9 in9Var, Collection collection) {
            this.b = in9Var;
            this.c = collection;
        }

        @Override
        public void dispose() {
            this.d.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override
        public void onComplete() {
            Collection collection = this.c;
            this.c = null;
            this.b.onSuccess(collection);
        }

        @Override
        public void onError(Throwable th) {
            this.c = null;
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            this.c.add(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public nd7(ld7 ld7Var, int i) {
        this.a = ld7Var;
        this.b = Functions.b(i);
    }

    @Override
    public void q(in9 in9Var) {
        try {
            this.a.subscribe(new a(in9Var, (Collection) ac7.d(this.b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            re3.b(th);
            EmptyDisposable.error(th, in9Var);
        }
    }
}
