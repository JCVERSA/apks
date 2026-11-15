package kotlinx.coroutines;

import java.util.concurrent.Future;

final class z0 implements a1 {

    private final Future f65047a;

    public z0(Future future) {
        this.f65047a = future;
    }

    @Override
    public void dispose() {
        this.f65047a.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f65047a + ']';
    }
}
