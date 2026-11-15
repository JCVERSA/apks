package defpackage;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;

public final class xc7 extends mc7 {
    public final Iterable b;

    public static final class a extends jd0 {
        public final pd7 b;
        public final Iterator c;
        public volatile boolean d;
        public boolean e;
        public boolean f;
        public boolean g;

        public a(pd7 pd7Var, Iterator it) {
            this.b = pd7Var;
            this.c = it;
        }

        public void a() {
            while (!isDisposed()) {
                try {
                    this.b.onNext(ac7.d(this.c.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.c.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.b.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        re3.b(th);
                        this.b.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    re3.b(th2);
                    this.b.onError(th2);
                    return;
                }
            }
        }

        @Override
        public void clear() {
            this.f = true;
        }

        @Override
        public void dispose() {
            this.d = true;
        }

        @Override
        public boolean isDisposed() {
            return this.d;
        }

        @Override
        public boolean isEmpty() {
            return this.f;
        }

        @Override
        public Object poll() {
            if (this.f) {
                return null;
            }
            if (!this.g) {
                this.g = true;
            } else if (!this.c.hasNext()) {
                this.f = true;
                return null;
            }
            return ac7.d(this.c.next(), "The iterator returned a null value");
        }

        @Override
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.e = true;
            return 1;
        }
    }

    public xc7(Iterable iterable) {
        this.b = iterable;
    }

    @Override
    public void c0(pd7 pd7Var) {
        try {
            Iterator it = this.b.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(pd7Var);
                    return;
                }
                a aVar = new a(pd7Var, it);
                pd7Var.onSubscribe(aVar);
                if (aVar.e) {
                    return;
                }
                aVar.a();
            } catch (Throwable th) {
                re3.b(th);
                EmptyDisposable.error(th, pd7Var);
            }
        } catch (Throwable th2) {
            re3.b(th2);
            EmptyDisposable.error(th2, pd7Var);
        }
    }
}
