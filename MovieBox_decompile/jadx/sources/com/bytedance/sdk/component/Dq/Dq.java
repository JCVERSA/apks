package com.bytedance.sdk.component.Dq;

public abstract class Dq implements Comparable<Dq>, Runnable {
    private int Sj;
    private String sP;

    public Dq(String str, int i10) {
        this.Sj = 0;
        this.Sj = i10 == 0 ? 5 : i10;
        this.sP = str;
    }

    public String getName() {
        return this.sP;
    }

    public int getPriority() {
        return this.Sj;
    }

    public void setPriority(int i10) {
        this.Sj = i10;
    }

    @Override
    public int compareTo(Dq dq2) {
        if (getPriority() < dq2.getPriority()) {
            return 1;
        }
        return getPriority() >= dq2.getPriority() ? -1 : 0;
    }

    public Dq(String str) {
        this.Sj = 5;
        this.sP = str;
    }
}
