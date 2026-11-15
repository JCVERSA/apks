package com.bytedance.sdk.component.Dq;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class Jcg<V> extends FutureTask<V> implements Comparable<Jcg<V>> {
    private int Sj;
    private int sP;

    public Jcg(Callable<V> callable, int i10, int i11) {
        super(callable);
        this.Sj = i10 == -1 ? 5 : i10;
        this.sP = i11;
    }

    @Override
    public int compareTo(Jcg jcg) {
        if (Sj() < jcg.Sj()) {
            return 1;
        }
        return Sj() > jcg.Sj() ? -1 : 0;
    }

    public int Sj() {
        return this.Sj;
    }

    public Jcg(Runnable runnable, V v10, int i10, int i11) {
        super(runnable, v10);
        this.Sj = i10 == -1 ? 5 : i10;
        this.sP = i11;
    }
}
