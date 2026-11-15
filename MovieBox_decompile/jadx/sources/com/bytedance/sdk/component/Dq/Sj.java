package com.bytedance.sdk.component.Dq;

import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class Sj extends ThreadPoolExecutor {
    private String Sj;

    public static class C0190Sj {
        private RejectedExecutionHandler Dq;
        private String Sj = "io";
        private int sP = 1;
        private long TKC = 30;
        private TimeUnit EjP = TimeUnit.SECONDS;
        private int HiB = Integer.MAX_VALUE;
        private BlockingQueue<Runnable> vS = null;
        private ThreadFactory Jcg = null;
        private int uA = 5;

        public C0190Sj Sj(String str) {
            this.Sj = str;
            return this;
        }

        public C0190Sj sP(int i10) {
            this.uA = i10;
            return this;
        }

        public C0190Sj Sj(int i10) {
            this.sP = i10;
            return this;
        }

        public C0190Sj Sj(long j10) {
            this.TKC = j10;
            return this;
        }

        public C0190Sj Sj(TimeUnit timeUnit) {
            this.EjP = timeUnit;
            return this;
        }

        public C0190Sj Sj(BlockingQueue<Runnable> blockingQueue) {
            this.vS = blockingQueue;
            return this;
        }

        public C0190Sj Sj(ThreadFactory threadFactory) {
            this.Jcg = threadFactory;
            return this;
        }

        public C0190Sj Sj(RejectedExecutionHandler rejectedExecutionHandler) {
            this.Dq = rejectedExecutionHandler;
            return this;
        }

        public Sj Sj() {
            if (this.Jcg == null) {
                this.Jcg = HiB.Sj().createThreadFactory(this.uA, this.Sj);
            }
            if (this.Dq == null) {
                this.Dq = vS.Dq();
            }
            if (this.vS == null) {
                this.vS = new LinkedBlockingQueue();
            }
            return new Sj(this.Sj, this.sP, this.HiB, this.TKC, this.EjP, this.vS, this.Jcg, this.Dq);
        }
    }

    public Sj(String str, int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.Sj = str;
    }

    private void Sj(Runnable runnable) {
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e10) {
            Sj(runnable, e10);
        } catch (Throwable th2) {
            Sj(runnable, th2);
        }
    }

    @Override
    protected void afterExecute(Runnable runnable, Throwable th2) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th2);
        if (!vS.Jcg() || TextUtils.isEmpty(this.Sj) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Sj;
        str.hashCode();
        switch (str) {
            case "io":
                Sj(queue, 2);
                break;
            case "log":
                Sj(queue, 4);
                break;
            case "aidl":
                Sj(queue, 2);
                break;
        }
    }

    @Override
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof Dq) {
            Sj(new sP((Dq) runnable, this));
        } else {
            Sj(new sP(new Dq(TmcConstants.ROUTE_UNKNOWN) {
                @Override
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (!vS.Jcg() || TextUtils.isEmpty(this.Sj) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Sj;
        str.hashCode();
        switch (str) {
            case "io":
                Sj(queue, vS.Sj + 2, getCorePoolSize() * 2);
                break;
            case "log":
                Sj(queue, 8, 8);
                break;
            case "aidl":
                Sj(queue, 5, 5);
                break;
        }
    }

    @Override
    public void shutdown() {
        if ("io".equals(this.Sj) || "aidl".equals(this.Sj)) {
            return;
        }
        super.shutdown();
    }

    @Override
    public List<Runnable> shutdownNow() {
        return ("io".equals(this.Sj) || "aidl".equals(this.Sj)) ? Collections.emptyList() : super.shutdownNow();
    }

    private void Sj(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        Sj(runnable, (Throwable) outOfMemoryError);
    }

    private void Sj(Runnable runnable, Throwable th2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                runnable.run();
            } catch (Throwable unused) {
            }
        }
    }

    private void Sj(BlockingQueue<Runnable> blockingQueue, int i10) {
        if (getCorePoolSize() == i10 || blockingQueue == null || blockingQueue.size() > 0) {
            return;
        }
        try {
            setCorePoolSize(i10);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    private void Sj(BlockingQueue<Runnable> blockingQueue, int i10, int i11) {
        if (getCorePoolSize() == i10 || blockingQueue == null || blockingQueue.size() < i11) {
            return;
        }
        try {
            setCorePoolSize(i10);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    public String Sj() {
        return this.Sj;
    }
}
