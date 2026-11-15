package com.pgl.ssdk;

import com.pgl.ssdk.z0;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a1<T extends z0> {

    private int f39250a;

    private BlockingQueue<T> f39251b = new LinkedBlockingQueue();

    private a1(int i10) {
        this.f39250a = i10;
    }

    public static a1 a(int i10) {
        return new a1(i10);
    }

    public T a() {
        return this.f39251b.poll();
    }
}
