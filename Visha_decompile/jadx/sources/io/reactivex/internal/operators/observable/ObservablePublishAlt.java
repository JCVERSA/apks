package io.reactivex.internal.operators.observable;

import defpackage.af1;
import defpackage.ld7;
import defpackage.mt8;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.wk5;
import defpackage.zf1;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservablePublishAlt extends af1 implements mt8 {
    public final ld7 b;
    public final AtomicReference c = new AtomicReference();

    public static final class InnerDisposable<T> extends AtomicReference<PublishConnection<T>> implements rc2 {
        private static final long serialVersionUID = 7463222674719692880L;
        final pd7 downstream;

        public InnerDisposable(pd7 pd7Var, PublishConnection<T> publishConnection) {
            this.downstream = pd7Var;
            lazySet(publishConnection);
        }

        @Override
        public void dispose() {
            PublishConnection<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.remove(this);
            }
        }

        @Override
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public static final class PublishConnection<T> extends AtomicReference<InnerDisposable<T>[]> implements pd7, rc2 {
        static final InnerDisposable[] EMPTY = new InnerDisposable[0];
        static final InnerDisposable[] TERMINATED = new InnerDisposable[0];
        private static final long serialVersionUID = -3251430252873581268L;
        final AtomicReference<PublishConnection<T>> current;
        Throwable error;
        final AtomicBoolean connect = new AtomicBoolean();
        final AtomicReference<rc2> upstream = new AtomicReference<>();

        public PublishConnection(AtomicReference<PublishConnection<T>> atomicReference) {
            this.current = atomicReference;
            lazySet(EMPTY);
        }

        public boolean add(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = get();
                if (innerDisposableArr == TERMINATED) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        @Override
        public void dispose() {
            getAndSet(TERMINATED);
            wk5.a(this.current, this, null);
            DisposableHelper.dispose(this.upstream);
        }

        @Override
        public boolean isDisposed() {
            return get() == TERMINATED;
        }

        @Override
        public void onComplete() {
            this.upstream.lazySet(DisposableHelper.DISPOSED);
            for (InnerDisposable<T> innerDisposable : getAndSet(TERMINATED)) {
                innerDisposable.downstream.onComplete();
            }
        }

        @Override
        public void onError(Throwable th) {
            this.error = th;
            this.upstream.lazySet(DisposableHelper.DISPOSED);
            for (InnerDisposable<T> innerDisposable : getAndSet(TERMINATED)) {
                innerDisposable.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            for (InnerDisposable<T> innerDisposable : get()) {
                innerDisposable.downstream.onNext(t);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.upstream, rc2Var);
        }

        public void remove(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerDisposableArr[i] == innerDisposable) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                innerDisposableArr2 = EMPTY;
                if (length != 1) {
                    innerDisposableArr2 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, i);
                    System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr2, i, (length - i) - 1);
                }
            } while (!compareAndSet(innerDisposableArr, innerDisposableArr2));
        }
    }

    public ObservablePublishAlt(ld7 ld7Var) {
        this.b = ld7Var;
    }

    @Override
    public void a(rc2 rc2Var) {
        wk5.a(this.c, (PublishConnection) rc2Var, null);
    }

    @Override
    public void c0(pd7 pd7Var) {
        PublishConnection publishConnection;
        while (true) {
            publishConnection = (PublishConnection) this.c.get();
            if (publishConnection != null) {
                break;
            }
            PublishConnection publishConnection2 = new PublishConnection(this.c);
            if (wk5.a(this.c, publishConnection, publishConnection2)) {
                publishConnection = publishConnection2;
                break;
            }
        }
        InnerDisposable innerDisposable = new InnerDisposable(pd7Var, publishConnection);
        pd7Var.onSubscribe(innerDisposable);
        if (publishConnection.add(innerDisposable)) {
            if (innerDisposable.isDisposed()) {
                publishConnection.remove(innerDisposable);
            }
        } else {
            Throwable th = publishConnection.error;
            if (th != null) {
                pd7Var.onError(th);
            } else {
                pd7Var.onComplete();
            }
        }
    }

    @Override
    public void n0(zf1 zf1Var) {
        PublishConnection publishConnection;
        while (true) {
            publishConnection = (PublishConnection) this.c.get();
            if (publishConnection != null && !publishConnection.isDisposed()) {
                break;
            }
            PublishConnection publishConnection2 = new PublishConnection(this.c);
            if (wk5.a(this.c, publishConnection, publishConnection2)) {
                publishConnection = publishConnection2;
                break;
            }
        }
        boolean z = false;
        if (!publishConnection.connect.get() && publishConnection.connect.compareAndSet(false, true)) {
            z = true;
        }
        try {
            zf1Var.accept(publishConnection);
            if (z) {
                this.b.subscribe(publishConnection);
            }
        } catch (Throwable th) {
            re3.b(th);
            throw ExceptionHelper.d(th);
        }
    }
}
