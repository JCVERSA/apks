package io.reactivex.internal.operators.observable;

import defpackage.br0;
import defpackage.ed7;
import defpackage.mc7;
import defpackage.mv9;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.rc7;
import defpackage.re3;
import defpackage.yw8;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableCreate extends mc7 {
    public final ed7 b;

    public static final class CreateEmitter<T> extends AtomicReference<rc2> implements rc7, rc2 {
        private static final long serialVersionUID = -3434801548987643227L;
        final pd7 observer;

        public CreateEmitter(pd7 pd7Var) {
            this.observer = pd7Var;
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
            if (isDisposed()) {
                return;
            }
            try {
                this.observer.onComplete();
            } finally {
                dispose();
            }
        }

        @Override
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
        }

        @Override
        public void onNext(T t) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                if (isDisposed()) {
                    return;
                }
                this.observer.onNext(t);
            }
        }

        public rc7 serialize() {
            return new SerializedEmitter(this);
        }

        @Override
        public void setCancellable(br0 br0Var) {
            setDisposable(new CancellableDisposable(br0Var));
        }

        @Override
        public void setDisposable(rc2 rc2Var) {
            DisposableHelper.set(this, rc2Var);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", CreateEmitter.class.getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.observer.onError(th);
                return true;
            } finally {
                dispose();
            }
        }
    }

    public static final class SerializedEmitter<T> extends AtomicInteger implements rc7 {
        private static final long serialVersionUID = 4883307006032401862L;
        volatile boolean done;
        final rc7 emitter;
        final AtomicThrowable error = new AtomicThrowable();
        final mv9 queue = new mv9(16);

        public SerializedEmitter(rc7 rc7Var) {
            this.emitter = rc7Var;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            rc7 rc7Var = this.emitter;
            mv9 mv9Var = this.queue;
            AtomicThrowable atomicThrowable = this.error;
            int iAddAndGet = 1;
            while (!rc7Var.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    mv9Var.clear();
                    rc7Var.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z = this.done;
                Object objPoll = mv9Var.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    rc7Var.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    rc7Var.onNext(objPoll);
                }
            }
            mv9Var.clear();
        }

        @Override
        public boolean isDisposed() {
            return this.emitter.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.emitter.isDisposed() || this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            yw8.s(th);
        }

        @Override
        public void onNext(T t) {
            if (this.emitter.isDisposed() || this.done) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.emitter.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                mv9 mv9Var = this.queue;
                synchronized (mv9Var) {
                    mv9Var.offer(t);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public rc7 serialize() {
            return this;
        }

        @Override
        public void setCancellable(br0 br0Var) {
            this.emitter.setCancellable(br0Var);
        }

        @Override
        public void setDisposable(rc2 rc2Var) {
            this.emitter.setDisposable(rc2Var);
        }

        @Override
        public String toString() {
            return this.emitter.toString();
        }

        public boolean tryOnError(Throwable th) {
            if (!this.emitter.isDisposed() && !this.done) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.error.addThrowable(th)) {
                    this.done = true;
                    drain();
                    return true;
                }
            }
            return false;
        }
    }

    public ObservableCreate(ed7 ed7Var) {
        this.b = ed7Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        CreateEmitter createEmitter = new CreateEmitter(pd7Var);
        pd7Var.onSubscribe(createEmitter);
        try {
            this.b.subscribe(createEmitter);
        } catch (Throwable th) {
            re3.b(th);
            createEmitter.onError(th);
        }
    }
}
