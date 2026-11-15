package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;

public final class l extends io.reactivex.rxjava3.internal.operators.observable.a {

    final yx.h f62447b;

    static final class a extends io.reactivex.rxjava3.internal.observers.a {

        final yx.h f62448f;

        a(io.reactivex.rxjava3.core.o oVar, yx.h hVar) {
            super(oVar);
            this.f62448f = hVar;
        }

        @Override
        public void onNext(Object obj) {
            if (this.f62340d) {
                return;
            }
            if (this.f62341e != 0) {
                this.f62337a.onNext(null);
                return;
            }
            try {
                Object objApply = this.f62448f.apply(obj);
                Objects.requireNonNull(objApply, "The mapper function returned a null value.");
                this.f62337a.onNext(objApply);
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override
        public Object poll() {
            Object objPoll = this.f62339c.poll();
            if (objPoll == null) {
                return null;
            }
            Object objApply = this.f62448f.apply(objPoll);
            Objects.requireNonNull(objApply, "The mapper function returned a null value.");
            return objApply;
        }

        @Override
        public int requestFusion(int i10) {
            return d(i10);
        }
    }

    public l(io.reactivex.rxjava3.core.m mVar, yx.h hVar) {
        super(mVar);
        this.f62447b = hVar;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        this.f62424a.subscribe(new a(oVar, this.f62447b));
    }
}
