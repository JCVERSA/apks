package com.hunantv.imgo.c.a.a;

import android.os.HandlerThread;

class c extends HandlerThread {
    private final boolean a;
    private final a b;
    private int c;

    public c(String str, int i, com.hunantv.imgo.c.a aVar, boolean z) {
        super(str, i);
        this.c = 10000;
        start();
        this.b = new a(getLooper(), aVar);
        this.a = z;
    }

    public a a() {
        return this.b;
    }

    public boolean b() {
        return this.a;
    }

    public int c() {
        return this.c;
    }

    public void d() {
        try {
            quitSafely();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(int i) {
        this.c = i;
    }
}
