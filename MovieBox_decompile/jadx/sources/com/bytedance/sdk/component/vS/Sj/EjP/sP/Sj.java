package com.bytedance.sdk.component.vS.Sj.EjP.sP;

import com.cloud.tmc.kernel.constants.TmcConstants;

public class Sj {
    private int Sj;
    private int sP;

    Sj(int i10, int i11, long j10) {
        if (i11 < i10) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.Sj = i10;
        this.sP = i11;
    }

    public static Sj EjP() {
        return new Sj(1, 100, -1L);
    }

    public static Sj HiB() {
        return new Sj(3, 100, TmcConstants.MINI_POPWINDOW_ADD_HOME_INTERVAL);
    }

    public static Sj TKC() {
        return new Sj(1, 100, TmcConstants.MINI_POPWINDOW_ADD_HOME_INTERVAL);
    }

    public int Sj() {
        return this.Sj;
    }

    public int sP() {
        return this.sP;
    }
}
