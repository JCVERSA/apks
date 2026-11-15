package com.bytedance.sdk.component.vS.Sj.HiB;

import java.util.UUID;

public abstract class HiB implements Comparable<HiB>, Runnable {
    private String TKC;
    private int Sj = 5;
    private String sP = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public HiB(String str) {
        this.TKC = str;
    }

    public void Sj(int i10) {
        this.Sj = i10;
    }

    public int Sj() {
        return this.Sj;
    }

    @Override
    public int compareTo(HiB hiB) {
        if (Sj() < hiB.Sj()) {
            return 1;
        }
        return Sj() >= hiB.Sj() ? -1 : 0;
    }
}
