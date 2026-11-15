package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;

public abstract class Worker extends i {

    androidx.work.impl.utils.futures.a f15064e;

    public Worker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override
    public com.google.common.util.concurrent.r d() {
        final androidx.work.impl.utils.futures.a aVarX = androidx.work.impl.utils.futures.a.x();
        c().execute(new Runnable() {
            @Override
            public void run() {
                try {
                    aVarX.t(Worker.this.q());
                } catch (Throwable th2) {
                    aVarX.u(th2);
                }
            }
        });
        return aVarX;
    }

    @Override
    public final com.google.common.util.concurrent.r n() {
        this.f15064e = androidx.work.impl.utils.futures.a.x();
        c().execute(new Runnable() {
            @Override
            public void run() {
                try {
                    Worker.this.f15064e.t(Worker.this.p());
                } catch (Throwable th2) {
                    Worker.this.f15064e.u(th2);
                }
            }
        });
        return this.f15064e;
    }

    public abstract i.a p();

    public e q() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }
}
