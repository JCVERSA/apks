package io.reactivex.subjects;

import defpackage.ac7;
import defpackage.pd7;
import defpackage.r1a;
import defpackage.rc2;
import defpackage.wk5;
import defpackage.yw8;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class PublishSubject extends r1a {
    public static final PublishDisposable[] d = new PublishDisposable[0];
    public static final PublishDisposable[] e = new PublishDisposable[0];
    public final AtomicReference b = new AtomicReference(e);
    public Throwable c;

    public static final class PublishDisposable<T> extends AtomicBoolean implements rc2 {
        private static final long serialVersionUID = 3562861878281475070L;
        final pd7 downstream;
        final PublishSubject parent;

        public PublishDisposable(pd7 pd7Var, PublishSubject publishSubject) {
            this.downstream = pd7Var;
            this.parent = publishSubject;
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.p0(this);
            }
        }

        @Override
        public boolean isDisposed() {
            return get();
        }

        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable th) {
            if (get()) {
                yw8.s(th);
            } else {
                this.downstream.onError(th);
            }
        }

        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }
    }

    public static PublishSubject o0() {
        return new PublishSubject();
    }

    @Override
    public void c0(pd7 pd7Var) {
        PublishDisposable publishDisposable = new PublishDisposable(pd7Var, this);
        pd7Var.onSubscribe(publishDisposable);
        if (n0(publishDisposable)) {
            if (publishDisposable.isDisposed()) {
                p0(publishDisposable);
            }
        } else {
            Throwable th = this.c;
            if (th != null) {
                pd7Var.onError(th);
            } else {
                pd7Var.onComplete();
            }
        }
    }

    public boolean n0(PublishDisposable publishDisposable) {
        PublishDisposable[] publishDisposableArr;
        PublishDisposable[] publishDisposableArr2;
        do {
            publishDisposableArr = (PublishDisposable[]) this.b.get();
            if (publishDisposableArr == d) {
                return false;
            }
            int length = publishDisposableArr.length;
            publishDisposableArr2 = new PublishDisposable[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = publishDisposable;
        } while (!wk5.a(this.b, publishDisposableArr, publishDisposableArr2));
        return true;
    }

    @Override
    public void onComplete() {
        Object obj = this.b.get();
        Object obj2 = d;
        if (obj == obj2) {
            return;
        }
        PublishDisposable[] publishDisposableArr = (PublishDisposable[]) this.b.getAndSet(obj2);
        for (PublishDisposable publishDisposable : publishDisposableArr) {
            publishDisposable.onComplete();
        }
    }

    @Override
    public void onError(Throwable th) {
        ac7.d(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        Object obj = this.b.get();
        Object obj2 = d;
        if (obj == obj2) {
            yw8.s(th);
            return;
        }
        this.c = th;
        PublishDisposable[] publishDisposableArr = (PublishDisposable[]) this.b.getAndSet(obj2);
        for (PublishDisposable publishDisposable : publishDisposableArr) {
            publishDisposable.onError(th);
        }
    }

    @Override
    public void onNext(Object obj) {
        ac7.d(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (PublishDisposable publishDisposable : (PublishDisposable[]) this.b.get()) {
            publishDisposable.onNext(obj);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (this.b.get() == d) {
            rc2Var.dispose();
        }
    }

    public void p0(PublishDisposable publishDisposable) {
        PublishDisposable[] publishDisposableArr;
        PublishDisposable[] publishDisposableArr2;
        do {
            publishDisposableArr = (PublishDisposable[]) this.b.get();
            if (publishDisposableArr == d || publishDisposableArr == e) {
                return;
            }
            int length = publishDisposableArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (publishDisposableArr[i] == publishDisposable) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                publishDisposableArr2 = e;
            } else {
                PublishDisposable[] publishDisposableArr3 = new PublishDisposable[length - 1];
                System.arraycopy(publishDisposableArr, 0, publishDisposableArr3, 0, i);
                System.arraycopy(publishDisposableArr, i + 1, publishDisposableArr3, i, (length - i) - 1);
                publishDisposableArr2 = publishDisposableArr3;
            }
        } while (!wk5.a(this.b, publishDisposableArr, publishDisposableArr2));
    }
}
