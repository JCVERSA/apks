package defpackage;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class y8e implements hae {
    public final CountDownLatch a = new CountDownLatch(1);

    public y8e(t7e t7eVar) {
    }

    @Override
    public final void a(Exception exc) {
        this.a.countDown();
    }

    @Override
    public final void b() {
        this.a.countDown();
    }

    public final void c() throws InterruptedException {
        this.a.await();
    }

    public final boolean d(long j, TimeUnit timeUnit) {
        return this.a.await(j, timeUnit);
    }

    @Override
    public final void onSuccess(Object obj) {
        this.a.countDown();
    }
}
