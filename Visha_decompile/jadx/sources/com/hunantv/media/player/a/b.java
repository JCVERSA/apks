package com.hunantv.media.player.a;

import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.utils.StringUtil;

public abstract class b implements Runnable {
    boolean a;
    private String c;
    private String f;
    private a g;
    private int b = 0;
    private int d = 0;
    private volatile boolean e = false;

    public interface a {
        void a();

        void a(String[] strArr);

        void b();

        void c();
    }

    private void f() {
        if (this.g == null || this.e) {
            return;
        }
        DebugLog.i(a(), " callGetAddressFailed code:" + c());
        this.g.b();
        this.g.c();
    }

    private void g() {
        if (this.g == null || this.e) {
            return;
        }
        this.g.a();
    }

    public b a(a aVar) {
        this.g = aVar;
        return this;
    }

    public abstract int b();

    public void b(int i) {
        this.d = i;
    }

    public abstract String[] b(String str);

    public int c() {
        return this.b;
    }

    public int d() {
        return this.d;
    }

    public void e() {
        this.e = true;
    }

    @Override
    public void run() {
        g();
        if (this.f == null) {
            a(103);
            f();
        }
        if (this.g != null) {
            DebugLog.i(a(), " run IN mHostName:" + this.f);
            String[] strArrB = b(this.f);
            DebugLog.i(a(), " run OUT getAddress:" + StringUtil.formatArrayString(strArrB));
            if (strArrB == null || strArrB.length <= 0) {
                f();
            } else {
                a(strArrB);
            }
            if (this.e) {
                this.g = null;
            }
        }
    }

    public b a(String str) {
        this.f = str;
        return this;
    }

    public void c(String str) {
        this.c = str;
    }

    public b a(boolean z) {
        this.a = z;
        return this;
    }

    public String a() {
        return getClass().getSimpleName();
    }

    public void a(int i) {
        if (this.b == 0) {
            this.b = b() + (d() * 10000) + i;
        }
    }

    private void a(String[] strArr) {
        if (this.g == null || this.e) {
            return;
        }
        this.g.a(strArr);
        this.g.c();
    }
}
