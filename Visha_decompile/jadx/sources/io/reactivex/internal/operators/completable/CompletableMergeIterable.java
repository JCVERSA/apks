package io.reactivex.internal.operators.completable;

import defpackage.ac7;
import defpackage.gd1;
import defpackage.hb1;
import defpackage.qb1;
import defpackage.rc2;
import defpackage.re3;
import defpackage.sb1;
import defpackage.yw8;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class CompletableMergeIterable extends hb1 {
    public final Iterable a;

    public static final class MergeCompletableObserver extends AtomicBoolean implements qb1 {
        private static final long serialVersionUID = -7730517613164279224L;
        final qb1 downstream;
        final gd1 set;
        final AtomicInteger wip;

        public MergeCompletableObserver(qb1 qb1Var, gd1 gd1Var, AtomicInteger atomicInteger) {
            this.downstream = qb1Var;
            this.set = gd1Var;
            this.wip = atomicInteger;
        }

        @Override
        public void onComplete() {
            if (this.wip.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.downstream.onComplete();
            }
        }

        @Override
        public void onError(Throwable th) {
            this.set.dispose();
            if (compareAndSet(false, true)) {
                this.downstream.onError(th);
            } else {
                yw8.s(th);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.set.b(rc2Var);
        }
    }

    public CompletableMergeIterable(Iterable iterable) {
        this.a = iterable;
    }

    @Override
    public void i(qb1 qb1Var) {
        gd1 gd1Var = new gd1();
        qb1Var.onSubscribe(gd1Var);
        try {
            Iterator it = (Iterator) ac7.d(this.a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            MergeCompletableObserver mergeCompletableObserver = new MergeCompletableObserver(qb1Var, gd1Var, atomicInteger);
            while (!gd1Var.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        mergeCompletableObserver.onComplete();
                        return;
                    }
                    if (gd1Var.isDisposed()) {
                        return;
                    }
                    try {
                        sb1 sb1Var = (sb1) ac7.d(it.next(), "The iterator returned a null CompletableSource");
                        if (gd1Var.isDisposed()) {
                            return;
                        }
                        atomicInteger.getAndIncrement();
                        sb1Var.a(mergeCompletableObserver);
                    } catch (Throwable th) {
                        re3.b(th);
                        gd1Var.dispose();
                        mergeCompletableObserver.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    re3.b(th2);
                    gd1Var.dispose();
                    mergeCompletableObserver.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            re3.b(th3);
            qb1Var.onError(th3);
        }
    }
}
