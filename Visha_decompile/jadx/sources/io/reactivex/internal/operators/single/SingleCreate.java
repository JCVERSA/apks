package io.reactivex.internal.operators.single;

import defpackage.br0;
import defpackage.in9;
import defpackage.jn9;
import defpackage.rc2;
import defpackage.re3;
import defpackage.xm9;
import defpackage.yw8;
import defpackage.zm9;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleCreate extends xm9 {
    public final jn9 a;

    public static final class Emitter<T> extends AtomicReference<rc2> implements zm9, rc2 {
        private static final long serialVersionUID = -2467358622224974244L;
        final in9 downstream;

        public Emitter(in9 in9Var) {
            this.downstream = in9Var;
        }

        @Override
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
        }

        @Override
        public void onSuccess(T t) {
            rc2 andSet;
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (t == null) {
                    this.downstream.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.downstream.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        public void setCancellable(br0 br0Var) {
            setDisposable(new CancellableDisposable(br0Var));
        }

        @Override
        public void setDisposable(rc2 rc2Var) {
            DisposableHelper.set(this, rc2Var);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }

        @Override
        public boolean tryOnError(Throwable th) {
            rc2 andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return false;
            }
            try {
                this.downstream.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    public SingleCreate(jn9 jn9Var) {
        this.a = jn9Var;
    }

    @Override
    public void q(in9 in9Var) {
        Emitter emitter = new Emitter(in9Var);
        in9Var.onSubscribe(emitter);
        try {
            this.a.subscribe(emitter);
        } catch (Throwable th) {
            re3.b(th);
            emitter.onError(th);
        }
    }
}
