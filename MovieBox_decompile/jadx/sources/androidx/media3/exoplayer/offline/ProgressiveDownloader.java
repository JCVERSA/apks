package androidx.media3.exoplayer.offline;

import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public final class ProgressiveDownloader implements o {

    private final Executor f12064a;

    private final w1.h f12065b;

    private final androidx.media3.datasource.cache.a f12066c;

    private final androidx.media3.datasource.cache.i f12067d;

    private final PriorityTaskManager f12068e;

    private o.a f12069f;

    private volatile RunnableFutureTask f12070g;

    private volatile boolean f12071h;

    public ProgressiveDownloader(androidx.media3.common.t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f12064a = (Executor) androidx.media3.common.util.a.e(executor);
        androidx.media3.common.util.a.e(tVar.f9899b);
        w1.h hVarA = new w1.h.b().i(tVar.f9899b.f9991a).f(tVar.f9899b.f9995e).b(4).a();
        this.f12065b = hVarA;
        androidx.media3.datasource.cache.a aVarB = cVar.b();
        this.f12066c = aVarB;
        this.f12067d = new androidx.media3.datasource.cache.i(aVarB, hVarA, null, new androidx.media3.datasource.cache.i.a() {
            @Override
            public final void a(long j10, long j11, long j12) {
                this.f12119a.d(j10, j11, j12);
            }
        });
        this.f12068e = cVar.g();
    }

    public void d(long j10, long j11, long j12) {
        o.a aVar = this.f12069f;
        if (aVar == null) {
            return;
        }
        aVar.onProgress(j10, j11, (j10 == -1 || j10 == 0) ? -1.0f : (j11 * 100.0f) / j10);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0021 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(o.a aVar) {
        this.f12069f = aVar;
        PriorityTaskManager priorityTaskManager = this.f12068e;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        boolean z10 = false;
        while (!z10) {
            if (this.f12071h) {
                break;
            }
            this.f12070g = new RunnableFutureTask<Void, IOException>() {
                @Override
                protected void cancelWork() {
                    ProgressiveDownloader.this.f12067d.b();
                }

                @Override
                public Void doWork() throws IOException {
                    ProgressiveDownloader.this.f12067d.a();
                    return null;
                }
            };
            PriorityTaskManager priorityTaskManager2 = this.f12068e;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-4000);
            }
            this.f12064a.execute(this.f12070g);
            try {
                this.f12070g.get();
                z10 = true;
            } catch (ExecutionException e10) {
                Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e10.getCause());
                if (!(th2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                    if (th2 instanceof IOException) {
                        throw ((IOException) th2);
                    }
                    a1.m1(th2);
                }
            }
        }
        ((RunnableFutureTask) androidx.media3.common.util.a.e(this.f12070g)).blockUntilFinished();
        PriorityTaskManager priorityTaskManager3 = this.f12068e;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-4000);
        }
    }

    @Override
    public void cancel() {
        this.f12071h = true;
        RunnableFutureTask runnableFutureTask = this.f12070g;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override
    public void remove() {
        this.f12066c.e().e(this.f12066c.f().a(this.f12065b));
    }
}
