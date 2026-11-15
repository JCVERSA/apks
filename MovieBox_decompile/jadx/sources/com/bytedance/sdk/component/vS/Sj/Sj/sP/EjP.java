package com.bytedance.sdk.component.vS.Sj.Sj.sP;

import com.bytedance.sdk.component.vS.Sj.EjP.Sj;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class EjP<T extends com.bytedance.sdk.component.vS.Sj.EjP.Sj> {
    private String EjP;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Sj;
    private Queue<String> TKC;
    private Queue<T> sP = new ConcurrentLinkedQueue();

    public EjP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2, Queue<String> queue, String str) {
        this.Sj = sj2;
        this.TKC = queue;
        this.EjP = str;
    }

    public void Sj(T t10) {
        Queue<T> queue = this.sP;
        if (queue == null || t10 == null) {
            return;
        }
        queue.offer(t10);
    }

    public synchronized boolean sP(int i10, int i11) {
        int size = this.sP.size();
        int iSj = this.Sj.Sj();
        if (i10 != 2 && i10 != 1) {
            return size >= iSj;
        }
        if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.TKC()) {
            return size > 0;
        }
        return size >= iSj;
    }

    public synchronized List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i10, int i11) {
        if (!sP(i10, i11)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.Sj.Sj());
        do {
            T tPoll = this.sP.poll();
            if (tPoll == null) {
                break;
            }
            arrayList.add(tPoll);
        } while (arrayList.size() != this.Sj.sP());
        return arrayList;
    }

    public synchronized void Sj(int i10, List<T> list) {
        try {
            if (i10 != -1 && i10 != 200 && i10 != 509) {
                this.sP.addAll(list);
            } else {
                this.sP.size();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
