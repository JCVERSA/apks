package com.bytedance.sdk.component.Dq.Sj;

import com.bytedance.sdk.component.Dq.Sj.TKC;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class EjP<T extends TKC> {
    private int Sj;
    private BlockingQueue<T> sP = new LinkedBlockingQueue();

    private EjP(int i10) {
        this.Sj = i10;
    }

    public static EjP Sj(int i10) {
        return new EjP(i10);
    }

    public T Sj() {
        return this.sP.poll();
    }

    public boolean Sj(T t10) {
        if (t10 == null) {
            return false;
        }
        t10.Sj();
        if (this.sP.size() >= this.Sj) {
            return false;
        }
        return this.sP.offer(t10);
    }
}
