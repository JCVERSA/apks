package com.bytedance.sdk.openadsdk.sU;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class sP {
    private int EjP;
    private Sj HiB;
    private ScheduledExecutorService Sj = null;
    private long TKC = 0;
    private Dq sP;

    public interface Sj {
    }

    public sP(Dq dq2, int i10) {
        this.sP = dq2;
        this.EjP = i10;
    }

    public void Sj(long j10) {
        this.TKC = j10;
    }

    public boolean sP() {
        ScheduledExecutorService scheduledExecutorService = this.Sj;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }

    public void Sj(int i10) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.Sj = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                System.currentTimeMillis();
                long unused = sP.this.TKC;
                if (System.currentTimeMillis() - sP.this.TKC > sP.this.EjP) {
                    sP.this.Sj.shutdown();
                    if (sP.this.sP != null) {
                        sP.this.sP.sP(0, "Automatic detection of stuck");
                    }
                    if (sP.this.HiB != null) {
                        Sj unused2 = sP.this.HiB;
                    }
                }
            }
        }, 0L, i10, TimeUnit.MILLISECONDS);
    }

    public void Sj() {
        ScheduledExecutorService scheduledExecutorService = this.Sj;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }
}
