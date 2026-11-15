package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;

public class WorkForegroundRunnable implements Runnable {
    static final String TAG = androidx.work.j.i("WorkForegroundRunnable");
    final Context mContext;
    final androidx.work.f mForegroundUpdater;
    final androidx.work.impl.utils.futures.a mFuture = androidx.work.impl.utils.futures.a.x();
    final k4.c mTaskExecutor;
    final j4.u mWorkSpec;
    final androidx.work.i mWorker;

    @SuppressLint({"LambdaLast"})
    public WorkForegroundRunnable(@NonNull Context context, @NonNull j4.u uVar, @NonNull androidx.work.i iVar, @NonNull androidx.work.f fVar, @NonNull k4.c cVar) {
        this.mContext = context;
        this.mWorkSpec = uVar;
        this.mWorker = iVar;
        this.mForegroundUpdater = fVar;
        this.mTaskExecutor = cVar;
    }

    public void lambda$run$0(androidx.work.impl.utils.futures.a aVar) {
        if (this.mFuture.isCancelled()) {
            aVar.cancel(true);
        } else {
            aVar.v(this.mWorker.d());
        }
    }

    @NonNull
    public com.google.common.util.concurrent.r getFuture() {
        return this.mFuture;
    }

    @Override
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.mWorkSpec.f63003q || Build.VERSION.SDK_INT >= 31) {
            this.mFuture.t(null);
            return;
        }
        final androidx.work.impl.utils.futures.a aVarX = androidx.work.impl.utils.futures.a.x();
        this.mTaskExecutor.a().execute(new Runnable() {
            @Override
            public final void run() {
                this.f15376a.lambda$run$0(aVarX);
            }
        });
        aVarX.addListener(new Runnable() {
            @Override
            public void run() {
                if (WorkForegroundRunnable.this.mFuture.isCancelled()) {
                    return;
                }
                try {
                    androidx.work.e eVar = (androidx.work.e) aVarX.get();
                    if (eVar == null) {
                        throw new IllegalStateException("Worker was marked important (" + WorkForegroundRunnable.this.mWorkSpec.f62989c + ") but did not provide ForegroundInfo");
                    }
                    androidx.work.j.e().a(WorkForegroundRunnable.TAG, "Updating notification for " + WorkForegroundRunnable.this.mWorkSpec.f62989c);
                    WorkForegroundRunnable workForegroundRunnable = WorkForegroundRunnable.this;
                    workForegroundRunnable.mFuture.v(workForegroundRunnable.mForegroundUpdater.a(workForegroundRunnable.mContext, workForegroundRunnable.mWorker.e(), eVar));
                } catch (Throwable th2) {
                    WorkForegroundRunnable.this.mFuture.u(th2);
                }
            }
        }, this.mTaskExecutor.a());
    }
}
