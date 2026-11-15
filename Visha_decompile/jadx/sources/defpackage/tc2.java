package defpackage;

import java.util.concurrent.Future;

public final class tc2 implements uc2 {
    public final Future b;

    public tc2(Future future) {
        this.b = future;
    }

    @Override
    public void dispose() {
        this.b.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.b + ']';
    }
}
