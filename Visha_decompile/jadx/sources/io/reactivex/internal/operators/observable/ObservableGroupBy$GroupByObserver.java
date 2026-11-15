package io.reactivex.internal.operators.observable;

import defpackage.ac7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import defpackage.t74;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableGroupBy$GroupByObserver<T, K, V> extends AtomicInteger implements pd7, rc2 {
    static final Object NULL_KEY = new Object();
    private static final long serialVersionUID = -3688291656102519502L;
    final int bufferSize;
    final boolean delayError;
    final pd7 downstream;
    final t74 keySelector;
    rc2 upstream;
    final t74 valueSelector;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final Map<Object, a> groups = new ConcurrentHashMap();

    public ObservableGroupBy$GroupByObserver(pd7 pd7Var, t74 t74Var, t74 t74Var2, int i, boolean z) {
        this.downstream = pd7Var;
        this.keySelector = t74Var;
        this.valueSelector = t74Var2;
        this.bufferSize = i;
        this.delayError = z;
        lazySet(1);
    }

    public void cancel(K k) {
        if (k == null) {
            k = (K) NULL_KEY;
        }
        this.groups.remove(k);
        if (decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }

    @Override
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true) && decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }

    @Override
    public boolean isDisposed() {
        return this.cancelled.get();
    }

    @Override
    public void onComplete() {
        ArrayList arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onComplete();
        }
        this.downstream.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        ArrayList arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onError(th);
        }
        this.downstream.onError(th);
    }

    @Override
    public void onNext(T t) {
        try {
            Object objApply = this.keySelector.apply(t);
            Object obj = objApply != null ? objApply : NULL_KEY;
            a aVarN0 = this.groups.get(obj);
            if (aVarN0 == null) {
                if (this.cancelled.get()) {
                    return;
                }
                aVarN0 = a.n0(objApply, this.bufferSize, this, this.delayError);
                this.groups.put(obj, aVarN0);
                getAndIncrement();
                this.downstream.onNext(aVarN0);
            }
            try {
                aVarN0.onNext(ac7.d(this.valueSelector.apply(t), "The value supplied is null"));
            } catch (Throwable th) {
                re3.b(th);
                this.upstream.dispose();
                onError(th);
            }
        } catch (Throwable th2) {
            re3.b(th2);
            this.upstream.dispose();
            onError(th2);
        }
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.upstream, rc2Var)) {
            this.upstream = rc2Var;
            this.downstream.onSubscribe(this);
        }
    }
}
