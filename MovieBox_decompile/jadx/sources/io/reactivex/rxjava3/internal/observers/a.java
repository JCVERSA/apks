package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public abstract class a implements o, io.reactivex.rxjava3.operators.b {

    protected final o f62337a;

    protected io.reactivex.rxjava3.disposables.c f62338b;

    protected io.reactivex.rxjava3.operators.b f62339c;

    protected boolean f62340d;

    protected int f62341e;

    public a(o oVar) {
        this.f62337a = oVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    protected final void c(Throwable th2) {
        io.reactivex.rxjava3.exceptions.a.b(th2);
        this.f62338b.dispose();
        onError(th2);
    }

    @Override
    public void clear() {
        this.f62339c.clear();
    }

    protected final int d(int i10) {
        io.reactivex.rxjava3.operators.b bVar = this.f62339c;
        if (bVar == null || (i10 & 4) != 0) {
            return 0;
        }
        int iRequestFusion = bVar.requestFusion(i10);
        if (iRequestFusion != 0) {
            this.f62341e = iRequestFusion;
        }
        return iRequestFusion;
    }

    @Override
    public void dispose() {
        this.f62338b.dispose();
    }

    @Override
    public boolean isDisposed() {
        return this.f62338b.isDisposed();
    }

    @Override
    public boolean isEmpty() {
        return this.f62339c.isEmpty();
    }

    @Override
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public void onComplete() {
        if (this.f62340d) {
            return;
        }
        this.f62340d = true;
        this.f62337a.onComplete();
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f62340d) {
            dy.a.r(th2);
        } else {
            this.f62340d = true;
            this.f62337a.onError(th2);
        }
    }

    @Override
    public final void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.f62338b, cVar)) {
            this.f62338b = cVar;
            if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                this.f62339c = (io.reactivex.rxjava3.operators.b) cVar;
            }
            if (b()) {
                this.f62337a.onSubscribe(this);
                a();
            }
        }
    }
}
