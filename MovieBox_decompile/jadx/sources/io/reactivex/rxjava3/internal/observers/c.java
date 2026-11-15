package io.reactivex.rxjava3.internal.observers;

public final class c extends b {
    @Override
    public void onError(Throwable th2) {
        if (this.f62342a == null) {
            this.f62343b = th2;
        }
        countDown();
    }

    @Override
    public void onNext(Object obj) {
        if (this.f62342a == null) {
            this.f62342a = obj;
            this.f62344c.dispose();
            countDown();
        }
    }
}
