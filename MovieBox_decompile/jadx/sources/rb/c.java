package rb;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import qb.g;

public class c implements b, a {

    private final e f70935a;

    private final int f70936b;

    private final TimeUnit f70937c;

    private CountDownLatch f70939e;

    private final Object f70938d = new Object();

    private boolean f70940f = false;

    public c(e eVar, int i10, TimeUnit timeUnit) {
        this.f70935a = eVar;
        this.f70936b = i10;
        this.f70937c = timeUnit;
    }

    @Override
    public void a(String str, Bundle bundle) {
        synchronized (this.f70938d) {
            try {
                g.f().i("Logging event " + str + " to Firebase Analytics with params " + bundle);
                this.f70939e = new CountDownLatch(1);
                this.f70940f = false;
                this.f70935a.a(str, bundle);
                g.f().i("Awaiting app exception callback from Analytics...");
                try {
                    if (this.f70939e.await(this.f70936b, this.f70937c)) {
                        this.f70940f = true;
                        g.f().i("App exception callback received from Analytics listener.");
                    } else {
                        g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                    }
                } catch (InterruptedException unused) {
                    g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
                }
                this.f70939e = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void c(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f70939e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
