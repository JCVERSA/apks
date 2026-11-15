package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class m96 extends xm9 {
    public final l96 a;
    public final Object b;

    public static final class a implements k96, rc2 {
        public final in9 b;
        public final Object c;
        public rc2 d;

        public a(in9 in9Var, Object obj) {
            this.b = in9Var;
            this.c = obj;
        }

        @Override
        public void dispose() {
            this.d.dispose();
            this.d = DisposableHelper.DISPOSED;
        }

        @Override
        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override
        public void onComplete() {
            this.d = DisposableHelper.DISPOSED;
            Object obj = this.c;
            if (obj != null) {
                this.b.onSuccess(obj);
            } else {
                this.b.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override
        public void onError(Throwable th) {
            this.d = DisposableHelper.DISPOSED;
            this.b.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(Object obj) {
            this.d = DisposableHelper.DISPOSED;
            this.b.onSuccess(obj);
        }
    }

    public m96(l96 l96Var, Object obj) {
        this.a = l96Var;
        this.b = obj;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.a(new a(in9Var, this.b));
    }
}
