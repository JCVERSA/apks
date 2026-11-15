package com.mbridge.msdk.thrid.okhttp.internal;

public abstract class b implements Runnable {

    protected final String f37068a;

    public b(String str, Object... objArr) {
        this.f37068a = c.a(str, objArr);
    }

    protected abstract void b();

    @Override
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f37068a);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
