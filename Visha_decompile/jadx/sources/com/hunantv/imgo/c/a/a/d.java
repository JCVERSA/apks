package com.hunantv.imgo.c.a.a;

import android.text.TextUtils;

public class d {
    private final a a;
    private final c b;

    public d(String str, int i, com.hunantv.imgo.c.a aVar) {
        this(str, i, aVar, true);
    }

    public void a(Runnable runnable, String str, int i, int i2) {
        if (runnable == null) {
            return;
        }
        this.a.a(b.a(runnable).a(str).a(i).b(i2).a());
    }

    public boolean b() {
        return this.b.getThreadId() < 0 || this.b.getLooper() == null || !this.b.isAlive();
    }

    public d(String str, int i, com.hunantv.imgo.c.a aVar, boolean z) {
        c cVar = new c(str, i, aVar, z);
        this.b = cVar;
        this.a = cVar.a();
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.removeMessages(str.hashCode());
    }

    public int a() {
        return this.a.a();
    }

    public void a(int i) {
        this.b.a(i);
    }
}
