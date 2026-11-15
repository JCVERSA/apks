package io.reactivex.rxjava3.internal.operators.observable;

public final class c extends io.reactivex.rxjava3.internal.operators.observable.a {

    final yx.f f62425b;

    static final class a extends io.reactivex.rxjava3.internal.observers.a {

        final yx.f f62426f;

        a(io.reactivex.rxjava3.core.o oVar, yx.f fVar) {
            super(oVar);
            this.f62426f = fVar;
        }

        @Override
        public void onNext(Object obj) {
            this.f62337a.onNext(obj);
            if (this.f62341e == 0) {
                try {
                    this.f62426f.accept(obj);
                } catch (Throwable th2) {
                    c(th2);
                }
            }
        }

        @Override
        public Object poll() {
            Object objPoll = this.f62339c.poll();
            if (objPoll != null) {
                this.f62426f.accept(objPoll);
            }
            return objPoll;
        }

        @Override
        public int requestFusion(int i10) {
            return d(i10);
        }
    }

    public c(io.reactivex.rxjava3.core.m mVar, yx.f fVar) {
        super(mVar);
        this.f62425b = fVar;
    }

    @Override
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f62424a.subscribe(new a(oVar, this.f62425b));
    }
}
