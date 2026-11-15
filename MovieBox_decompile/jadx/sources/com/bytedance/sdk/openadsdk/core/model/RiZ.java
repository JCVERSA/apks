package com.bytedance.sdk.openadsdk.core.model;

public class RiZ {
    private long Sj = 10000;
    private long sP = 10000;
    private long TKC = 10;
    private long EjP = 20;
    private String HiB = "";

    public long EjP() {
        return this.EjP;
    }

    public String HiB() {
        return this.HiB;
    }

    public long Sj() {
        return this.Sj;
    }

    public long TKC() {
        return this.TKC;
    }

    public long sP() {
        return this.sP;
    }

    public void EjP(long j10) {
        if (j10 < 0) {
            this.EjP = 20L;
        } else {
            this.EjP = j10;
        }
    }

    public void Sj(long j10) {
        if (j10 <= 0) {
            this.Sj = 10L;
        } else {
            this.Sj = j10;
        }
    }

    public void TKC(long j10) {
        if (j10 <= 0) {
            this.TKC = 10L;
        } else {
            this.TKC = j10;
        }
    }

    public void sP(long j10) {
        if (j10 < 0) {
            this.sP = 20L;
        } else {
            this.sP = j10;
        }
    }

    public void Sj(String str) {
        this.HiB = str;
    }
}
