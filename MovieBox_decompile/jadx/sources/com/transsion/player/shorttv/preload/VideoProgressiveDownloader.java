package com.transsion.player.shorttv.preload;

import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.t;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public final class VideoProgressiveDownloader implements androidx.media3.exoplayer.offline.o {

    private final Executor f46501a;

    private final w1.h f46502b;

    private final androidx.media3.datasource.cache.a f46503c;

    private final androidx.media3.datasource.cache.i f46504d;

    private final PriorityTaskManager f46505e;

    private androidx.media3.exoplayer.offline.o.a f46506f;

    private volatile RunnableFutureTask f46507g;

    private volatile boolean f46508h;

    public VideoProgressiveDownloader(t tVar, androidx.media3.datasource.cache.a.c cVar, Executor executor) {
        this.f46501a = (Executor) androidx.media3.common.util.a.e(executor);
        androidx.media3.common.util.a.e(tVar.f9899b);
        w1.h hVarA = new w1.h.b().i(tVar.f9899b.f9991a).f(tVar.f9899b.f9995e).b(4).a();
        this.f46502b = hVarA;
        androidx.media3.datasource.cache.a aVarB = cVar.b();
        this.f46503c = aVarB;
        this.f46504d = new androidx.media3.datasource.cache.i(aVarB, hVarA, null, new androidx.media3.datasource.cache.i.a() {
            @Override
            public final void a(long j10, long j11, long j12) {
                this.f46548a.d(j10, j11, j12);
            }
        });
        this.f46505e = cVar.g();
    }

    public void d(long j10, long j11, long j12) {
        androidx.media3.exoplayer.offline.o.a aVar = this.f46506f;
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
    public void a(androidx.media3.exoplayer.offline.o.a aVar) {
        this.f46506f = aVar;
        PriorityTaskManager priorityTaskManager = this.f46505e;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        boolean z10 = false;
        while (!z10) {
            if (this.f46508h) {
                break;
            }
            this.f46507g = new RunnableFutureTask<Void, IOException>() {
                @Override
                protected void cancelWork() {
                    VideoProgressiveDownloader.this.f46504d.b();
                }

                @Override
                public Void doWork() throws IOException {
                    VideoProgressiveDownloader.this.f46504d.a();
                    return null;
                }
            };
            PriorityTaskManager priorityTaskManager2 = this.f46505e;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-4000);
            }
            this.f46501a.execute(this.f46507g);
            try {
                this.f46507g.get();
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
        ((RunnableFutureTask) androidx.media3.common.util.a.e(this.f46507g)).blockUntilFinished();
        PriorityTaskManager priorityTaskManager3 = this.f46505e;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-4000);
        }
    }

    @Override
    public void cancel() {
        this.f46508h = true;
        RunnableFutureTask runnableFutureTask = this.f46507g;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override
    public void remove() {
    }
}
