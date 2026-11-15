package io.reactivex.internal.operators.observable;

import defpackage.af1;
import defpackage.gd7;
import defpackage.ld7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.wk5;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservablePublish extends af1 implements gd7 {
    public final ld7 b;
    public final AtomicReference c;
    public final ld7 d;

    public static final class InnerDisposable<T> extends AtomicReference<Object> implements rc2 {
        private static final long serialVersionUID = -1100270633763673112L;
        final pd7 child;

        public InnerDisposable(pd7 pd7Var) {
            this.child = pd7Var;
        }

        @Override
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((a) andSet).b(this);
        }

        @Override
        public boolean isDisposed() {
            return get() == this;
        }

        public void setParent(a aVar) {
            if (compareAndSet(null, aVar)) {
                return;
            }
            aVar.b(this);
        }
    }

    public static final class a implements pd7, rc2 {
        public static final InnerDisposable[] f = new InnerDisposable[0];
        public static final InnerDisposable[] g = new InnerDisposable[0];
        public final AtomicReference b;
        public final AtomicReference e = new AtomicReference();
        public final AtomicReference c = new AtomicReference(f);
        public final AtomicBoolean d = new AtomicBoolean();

        public a(AtomicReference atomicReference) {
            this.b = atomicReference;
        }

        public boolean a(InnerDisposable innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.c.get();
                if (innerDisposableArr == g) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!wk5.a(this.c, innerDisposableArr, innerDisposableArr2));
            return true;
        }

        public void b(InnerDisposable innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.c.get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (innerDisposableArr[i].equals(innerDisposable)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerDisposableArr2 = f;
                } else {
                    InnerDisposable[] innerDisposableArr3 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr3, 0, i);
                    System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr3, i, (length - i) - 1);
                    innerDisposableArr2 = innerDisposableArr3;
                }
            } while (!wk5.a(this.c, innerDisposableArr, innerDisposableArr2));
        }

        @Override
        public void dispose() {
            AtomicReference atomicReference = this.c;
            InnerDisposable[] innerDisposableArr = g;
            if (((InnerDisposable[]) atomicReference.getAndSet(innerDisposableArr)) != innerDisposableArr) {
                wk5.a(this.b, this, null);
                DisposableHelper.dispose(this.e);
            }
        }

        @Override
        public boolean isDisposed() {
            return this.c.get() == g;
        }

        @Override
        public void onComplete() {
            wk5.a(this.b, this, null);
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.c.getAndSet(g)) {
                innerDisposable.child.onComplete();
            }
        }

        @Override
        public void onError(Throwable th) {
            wk5.a(this.b, this, null);
            InnerDisposable[] innerDisposableArr = (InnerDisposable[]) this.c.getAndSet(g);
            if (innerDisposableArr.length == 0) {
                yw8.s(th);
                return;
            }
            for (InnerDisposable innerDisposable : innerDisposableArr) {
                innerDisposable.child.onError(th);
            }
        }

        @Override
        public void onNext(Object obj) {
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.c.get()) {
                innerDisposable.child.onNext(obj);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            DisposableHelper.setOnce(this.e, rc2Var);
        }
    }

    public static final class b implements ld7 {
        public final AtomicReference b;

        public b(AtomicReference atomicReference) {
            this.b = atomicReference;
        }

        @Override
        public void subscribe(pd7 pd7Var) {
            InnerDisposable innerDisposable = new InnerDisposable(pd7Var);
            pd7Var.onSubscribe(innerDisposable);
            while (true) {
                a aVar = (a) this.b.get();
                if (aVar == null || aVar.isDisposed()) {
                    a aVar2 = new a(this.b);
                    if (wk5.a(this.b, aVar, aVar2)) {
                        aVar = aVar2;
                    } else {
                        continue;
                    }
                }
                if (aVar.a(innerDisposable)) {
                    innerDisposable.setParent(aVar);
                    return;
                }
            }
        }
    }

    public ObservablePublish(ld7 ld7Var, ld7 ld7Var2, AtomicReference atomicReference) {
        this.d = ld7Var;
        this.b = ld7Var2;
        this.c = atomicReference;
    }

    public static af1 q0(ld7 ld7Var) {
        AtomicReference atomicReference = new AtomicReference();
        return yw8.l(new ObservablePublish(new b(atomicReference), ld7Var, atomicReference));
    }

    @Override
    public ld7 b() {
        return this.b;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.d.subscribe(pd7Var);
    }

    @Override
    public void n0(zf1 zf1Var) {
        a aVar;
        while (true) {
            aVar = (a) this.c.get();
            if (aVar != null && !aVar.isDisposed()) {
                break;
            }
            a aVar2 = new a(this.c);
            if (wk5.a(this.c, aVar, aVar2)) {
                aVar = aVar2;
                break;
            }
        }
        boolean z = false;
        if (!aVar.d.get() && aVar.d.compareAndSet(false, true)) {
            z = true;
        }
        try {
            zf1Var.accept(aVar);
            if (z) {
                this.b.subscribe(aVar);
            }
        } catch (Throwable th) {
            re3.b(th);
            throw ExceptionHelper.d(th);
        }
    }
}
