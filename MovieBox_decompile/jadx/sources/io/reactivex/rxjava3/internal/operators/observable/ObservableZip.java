package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableZip extends io.reactivex.rxjava3.core.j {

    final io.reactivex.rxjava3.core.m[] f62414a;

    final Iterable f62415b;

    final yx.h f62416c;

    final int f62417d;

    final boolean f62418e;

    static final class ZipCoordinator<T, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.c {
        private static final long serialVersionUID = 2983708048395377667L;
        volatile boolean cancelled;
        final boolean delayError;
        final io.reactivex.rxjava3.core.o downstream;
        final a[] observers;
        final T[] row;
        final yx.h zipper;

        ZipCoordinator(io.reactivex.rxjava3.core.o oVar, yx.h hVar, int i10, boolean z10) {
            this.downstream = oVar;
            this.zipper = hVar;
            this.observers = new a[i10];
            this.row = (T[]) new Object[i10];
            this.delayError = z10;
        }

        void cancel() {
            clear();
            cancelSources();
        }

        void cancelSources() {
            for (a aVar : this.observers) {
                aVar.a();
            }
        }

        boolean checkTerminated(boolean z10, boolean z11, io.reactivex.rxjava3.core.o oVar, boolean z12, a aVar) {
            if (this.cancelled) {
                cancel();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (z12) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = aVar.f62422d;
                this.cancelled = true;
                cancel();
                if (th2 != null) {
                    oVar.onError(th2);
                } else {
                    oVar.onComplete();
                }
                return true;
            }
            Throwable th3 = aVar.f62422d;
            if (th3 != null) {
                this.cancelled = true;
                cancel();
                oVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            this.cancelled = true;
            cancel();
            oVar.onComplete();
            return true;
        }

        void clear() {
            for (a aVar : this.observers) {
                aVar.f62420b.clear();
            }
        }

        @Override
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public void drain() {
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            a[] aVarArr = this.observers;
            io.reactivex.rxjava3.core.o oVar = this.downstream;
            T[] tArr = this.row;
            boolean z10 = this.delayError;
            int iAddAndGet = 1;
            while (true) {
                int i10 = 0;
                int i11 = 0;
                for (a aVar : aVarArr) {
                    if (tArr[i11] == null) {
                        boolean z11 = aVar.f62421c;
                        Object objPoll = aVar.f62420b.poll();
                        boolean z12 = objPoll == null;
                        if (checkTerminated(z11, z12, oVar, z10, aVar)) {
                            return;
                        }
                        if (z12) {
                            i10++;
                        } else {
                            tArr[i11] = objPoll;
                        }
                    } else if (aVar.f62421c && !z10 && (th2 = aVar.f62422d) != null) {
                        this.cancelled = true;
                        cancel();
                        oVar.onError(th2);
                        return;
                    }
                    i11++;
                }
                if (i10 != 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        Object objApply = this.zipper.apply(tArr.clone());
                        Objects.requireNonNull(objApply, "The zipper returned a null value");
                        oVar.onNext(objApply);
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th3) {
                        io.reactivex.rxjava3.exceptions.a.b(th3);
                        cancel();
                        oVar.onError(th3);
                        return;
                    }
                }
            }
        }

        @Override
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(io.reactivex.rxjava3.core.m[] mVarArr, int i10) {
            a[] aVarArr = this.observers;
            int length = aVarArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                aVarArr[i11] = new a(this, i10);
            }
            lazySet(0);
            this.downstream.onSubscribe(this);
            for (int i12 = 0; i12 < length && !this.cancelled; i12++) {
                mVarArr[i12].subscribe(aVarArr[i12]);
            }
        }
    }

    static final class a implements io.reactivex.rxjava3.core.o {

        final ZipCoordinator f62419a;

        final io.reactivex.rxjava3.operators.h f62420b;

        volatile boolean f62421c;

        Throwable f62422d;

        final AtomicReference f62423e = new AtomicReference();

        a(ZipCoordinator zipCoordinator, int i10) {
            this.f62419a = zipCoordinator;
            this.f62420b = new io.reactivex.rxjava3.operators.h(i10);
        }

        public void a() {
            DisposableHelper.dispose(this.f62423e);
        }

        @Override
        public void onComplete() {
            this.f62421c = true;
            this.f62419a.drain();
        }

        @Override
        public void onError(Throwable th2) {
            this.f62422d = th2;
            this.f62421c = true;
            this.f62419a.drain();
        }

        @Override
        public void onNext(Object obj) {
            this.f62420b.offer(obj);
            this.f62419a.drain();
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this.f62423e, cVar);
        }
    }

    public ObservableZip(io.reactivex.rxjava3.core.m[] mVarArr, Iterable iterable, yx.h hVar, int i10, boolean z10) {
        this.f62414a = mVarArr;
        this.f62415b = iterable;
        this.f62416c = hVar;
        this.f62417d = i10;
        this.f62418e = z10;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        int length;
        io.reactivex.rxjava3.core.m[] mVarArr = this.f62414a;
        if (mVarArr == null) {
            mVarArr = new io.reactivex.rxjava3.core.m[8];
            length = 0;
            for (io.reactivex.rxjava3.core.m mVar : this.f62415b) {
                if (length == mVarArr.length) {
                    io.reactivex.rxjava3.core.m[] mVarArr2 = new io.reactivex.rxjava3.core.m[(length >> 2) + length];
                    System.arraycopy(mVarArr, 0, mVarArr2, 0, length);
                    mVarArr = mVarArr2;
                }
                mVarArr[length] = mVar;
                length++;
            }
        } else {
            length = mVarArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(oVar);
        } else {
            new ZipCoordinator(oVar, this.f62416c, length, this.f62418e).subscribe(mVarArr, this.f62417d);
        }
    }
}
