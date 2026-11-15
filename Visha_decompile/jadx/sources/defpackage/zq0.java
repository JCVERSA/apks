package defpackage;

import java.util.concurrent.Future;
import kotlinx.coroutines.b;

public final class zq0 implements b {
    public final Future b;

    public zq0(Future future) {
        this.b = future;
    }

    @Override
    public void a(Throwable th) {
        this.b.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.b + ']';
    }
}
