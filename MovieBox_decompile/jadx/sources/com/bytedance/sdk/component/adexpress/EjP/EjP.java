package com.bytedance.sdk.component.adexpress.EjP;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class EjP {
    public static void Sj(com.bytedance.sdk.component.Dq.Dq dq2, int i10) {
        if (dq2 == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
        ExecutorService executorServiceSef = TKC != null ? TKC.sef() : null;
        if (executorServiceSef == null) {
            com.bytedance.sdk.component.Dq.vS.Sj(dq2, i10);
        } else {
            dq2.setPriority(i10);
            executorServiceSef.execute(dq2);
        }
    }

    public static void sP(com.bytedance.sdk.component.Dq.Dq dq2, int i10) {
        if (dq2 == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.Sj.Sj.TKC TKC = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC();
        ExecutorService executorServiceFmk = TKC != null ? TKC.Fmk() : null;
        if (executorServiceFmk == null) {
            com.bytedance.sdk.component.Dq.vS.Sj(dq2);
        } else {
            dq2.setPriority(i10);
            executorServiceFmk.execute(dq2);
        }
    }

    public static ScheduledFuture Sj(Runnable runnable, long j10, TimeUnit timeUnit) {
        return com.bytedance.sdk.component.Dq.vS.vS().schedule(runnable, j10, timeUnit);
    }
}
