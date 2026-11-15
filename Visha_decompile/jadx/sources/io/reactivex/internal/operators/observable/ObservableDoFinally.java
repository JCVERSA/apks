package io.reactivex.internal.operators.observable;

import defpackage.d5;
import defpackage.fm8;
import defpackage.ld7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;

public final class ObservableDoFinally extends n3 {
    public final d5 c;

    public static final class DoFinallyObserver<T> extends BasicIntQueueDisposable<T> implements pd7 {
        private static final long serialVersionUID = 4109457741734051389L;
        final pd7 downstream;
        final d5 onFinally;
        fm8 qd;
        boolean syncFused;
        rc2 upstream;

        public DoFinallyObserver(pd7 pd7Var, d5 d5Var) {
            this.downstream = pd7Var;
            this.onFinally = d5Var;
        }

        @Override
        public void clear() {
            this.qd.clear();
        }

        @Override
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override
        public boolean isEmpty() {
            return this.qd.isEmpty();
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
            runFinally();
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.upstream, rc2Var)) {
                this.upstream = rc2Var;
                if (rc2Var instanceof fm8) {
                    this.qd = (fm8) rc2Var;
                }
                this.downstream.onSubscribe(this);
            }
        }

        @Override
        public T poll() throws Exception {
            T t = (T) this.qd.poll();
            if (t == null && this.syncFused) {
                runFinally();
            }
            return t;
        }

        @Override
        public int requestFusion(int i) {
            fm8 fm8Var = this.qd;
            if (fm8Var == null || (i & 4) != 0) {
                return 0;
            }
            int iRequestFusion = fm8Var.requestFusion(i);
            if (iRequestFusion != 0) {
                this.syncFused = iRequestFusion == 1;
            }
            return iRequestFusion;
        }

        public void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    re3.b(th);
                    yw8.s(th);
                }
            }
        }
    }

    public ObservableDoFinally(ld7 ld7Var, d5 d5Var) {
        super(ld7Var);
        this.c = d5Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new DoFinallyObserver(pd7Var, this.c));
    }
}
