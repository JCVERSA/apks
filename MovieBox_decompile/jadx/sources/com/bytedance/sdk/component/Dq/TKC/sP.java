package com.bytedance.sdk.component.Dq.TKC;

public abstract class sP implements Comparable<sP>, Runnable {
    private long EjP;
    private long HiB;
    private int Sj;
    private Runnable TKC;
    private String sP;
    private long vS;

    public sP(String str) {
        this.Sj = 5;
        this.sP = str;
    }

    public Runnable Dq() {
        return this.TKC;
    }

    public long EjP() {
        return this.HiB;
    }

    public long HiB() {
        return this.vS;
    }

    public long Jcg() {
        return this.vS - this.HiB;
    }

    public void Sj(int i10) {
        this.Sj = i10;
    }

    public long TKC() {
        return this.EjP;
    }

    public String sP() {
        return this.sP;
    }

    public long vS() {
        return this.HiB - this.EjP;
    }

    public int Sj() {
        return this.Sj;
    }

    public void TKC(long j10) {
        this.vS = j10;
    }

    public void sP(long j10) {
        this.HiB = j10;
    }

    @Override
    public int compareTo(sP sPVar) {
        if (Sj() < sPVar.Sj()) {
            return 1;
        }
        return Sj() >= sPVar.Sj() ? -1 : 0;
    }

    public sP(int i10, String str) {
        this.Sj = i10;
        this.sP = str;
    }

    public void Sj(long j10) {
        this.EjP = j10;
    }

    public sP(String str, Runnable runnable) {
        this.Sj = 5;
        this.sP = str;
        this.TKC = runnable;
    }
}
