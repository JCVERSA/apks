package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

public class Sj extends com.bytedance.sdk.component.sP.Sj.EjP {
    public static volatile uA Sj;
    private ExecutorService EjP;
    private List<com.bytedance.sdk.component.sP.Sj.sP> sP = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.sP.Sj.sP> TKC = new CopyOnWriteArrayList();

    public Sj(ExecutorService executorService) {
        this.EjP = executorService;
    }

    @Override
    public List<com.bytedance.sdk.component.sP.Sj.sP> EjP() {
        return this.TKC;
    }

    public boolean HiB() {
        return (Sj == null || Sj.Sj() == null) ? false : true;
    }

    @Override
    public int Sj() {
        return 0;
    }

    @Override
    public List<com.bytedance.sdk.component.sP.Sj.sP> TKC() {
        return this.sP;
    }

    @Override
    public ExecutorService sP() {
        ExecutorService executorServiceSj = Sj != null ? Sj.Sj() : null;
        return executorServiceSj != null ? executorServiceSj : this.EjP;
    }

    @Override
    public void Sj(int i10) {
    }

    public static void Sj(uA uAVar) {
        Sj = uAVar;
    }
}
