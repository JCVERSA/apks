package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableBuffer extends io.reactivex.rxjava3.internal.operators.observable.a {

    final int f62383b;

    final int f62384c;

    final yx.k f62385d;

    static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
        private static final long serialVersionUID = -8223395059921494546L;
        final yx.k bufferSupplier;
        final ArrayDeque<U> buffers = new ArrayDeque<>();
        final int count;
        final io.reactivex.rxjava3.core.o downstream;
        long index;
        final int skip;
        io.reactivex.rxjava3.disposables.c upstream;

        BufferSkipObserver(io.reactivex.rxjava3.core.o oVar, int i10, int i11, yx.k kVar) {
            this.downstream = oVar;
            this.count = i10;
            this.skip = i11;
            this.bufferSupplier = kVar;
        }

        @Override
        public void dispose() {
            this.upstream.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override
        public void onComplete() {
            while (!this.buffers.isEmpty()) {
                this.downstream.onNext(this.buffers.poll());
            }
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            this.buffers.clear();
            this.downstream.onError(th2);
        }

        @Override
        public void onNext(T t10) {
            long j10 = this.index;
            this.index = 1 + j10;
            if (j10 % ((long) this.skip) == 0) {
                try {
                    this.buffers.offer((U) ((Collection) ExceptionHelper.c(this.bufferSupplier.get(), "The bufferSupplier returned a null Collection.")));
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.buffers.clear();
                    this.upstream.dispose();
                    this.downstream.onError(th2);
                    return;
                }
            }
            Iterator<U> it = this.buffers.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t10);
                if (this.count <= next.size()) {
                    it.remove();
                    this.downstream.onNext(next);
                }
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                this.downstream.onSubscribe(this);
            }
        }
    }

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final io.reactivex.rxjava3.core.o f62386a;

        final int f62387b;

        final yx.k f62388c;

        Collection f62389d;

        int f62390e;

        io.reactivex.rxjava3.disposables.c f62391f;

        a(io.reactivex.rxjava3.core.o oVar, int i10, yx.k kVar) {
            this.f62386a = oVar;
            this.f62387b = i10;
            this.f62388c = kVar;
        }

        boolean a() {
            try {
                Object obj = this.f62388c.get();
                Objects.requireNonNull(obj, "Empty buffer supplied");
                this.f62389d = (Collection) obj;
                return true;
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f62389d = null;
                io.reactivex.rxjava3.disposables.c cVar = this.f62391f;
                if (cVar == null) {
                    EmptyDisposable.error(th2, this.f62386a);
                    return false;
                }
                cVar.dispose();
                this.f62386a.onError(th2);
                return false;
            }
        }

        @Override
        public void dispose() {
            this.f62391f.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62391f.isDisposed();
        }

        @Override
        public void onComplete() {
            Collection collection = this.f62389d;
            if (collection != null) {
                this.f62389d = null;
                if (!collection.isEmpty()) {
                    this.f62386a.onNext(collection);
                }
                this.f62386a.onComplete();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f62389d = null;
            this.f62386a.onError(th2);
        }

        @Override
        public void onNext(Object obj) {
            Collection collection = this.f62389d;
            if (collection != null) {
                collection.add(obj);
                int i10 = this.f62390e + 1;
                this.f62390e = i10;
                if (i10 >= this.f62387b) {
                    this.f62386a.onNext(collection);
                    this.f62390e = 0;
                    a();
                }
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f62391f, cVar)) {
                this.f62391f = cVar;
                this.f62386a.onSubscribe(this);
            }
        }
    }

    public ObservableBuffer(io.reactivex.rxjava3.core.m mVar, int i10, int i11, yx.k kVar) {
        super(mVar);
        this.f62383b = i10;
        this.f62384c = i11;
        this.f62385d = kVar;
    }

    @Override
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        int i10 = this.f62384c;
        int i11 = this.f62383b;
        if (i10 != i11) {
            this.f62424a.subscribe(new BufferSkipObserver(oVar, this.f62383b, this.f62384c, this.f62385d));
            return;
        }
        a aVar = new a(oVar, i11, this.f62385d);
        if (aVar.a()) {
            this.f62424a.subscribe(aVar);
        }
    }
}
