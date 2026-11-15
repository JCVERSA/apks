package kotlinx.coroutines;

import java.util.concurrent.Future;

final class l implements m {

    private final Future f64926a;

    public l(Future future) {
        this.f64926a = future;
    }

    @Override
    public void a(Throwable th2) {
        this.f64926a.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f64926a + ']';
    }
}
