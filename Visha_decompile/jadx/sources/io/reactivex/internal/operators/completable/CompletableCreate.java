package io.reactivex.internal.operators.completable;

import defpackage.br0;
import defpackage.hb1;
import defpackage.lb1;
import defpackage.qb1;
import defpackage.rb1;
import defpackage.rc2;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class CompletableCreate extends hb1 {
    public final rb1 a;

    public static final class Emitter extends AtomicReference<rc2> implements lb1, rc2 {
        private static final long serialVersionUID = -2467358622224974244L;
        final qb1 downstream;

        public Emitter(qb1 qb1Var) {
            this.downstream = qb1Var;
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
        public void onComplete() {
            rc2 andSet;
            rc2 rc2Var = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (rc2Var == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.downstream.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
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

    public CompletableCreate(rb1 rb1Var) {
        this.a = rb1Var;
    }

    @Override
    public void i(qb1 qb1Var) {
        Emitter emitter = new Emitter(qb1Var);
        qb1Var.onSubscribe(emitter);
        try {
            this.a.a(emitter);
        } catch (Throwable th) {
            re3.b(th);
            emitter.onError(th);
        }
    }
}
