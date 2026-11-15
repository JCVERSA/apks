package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

public final class k42 {
    private final l42 a;
    private final String b;
    private boolean c;
    private h42 d;
    private final ArrayList e;
    private boolean f;

    public k42(l42 l42Var, String str) {
        y45.j(l42Var, "taskRunner");
        y45.j(str, "name");
        this.a = l42Var;
        this.b = str;
        this.e = new ArrayList();
    }

    public final void a(h42 h42Var, long j) {
        y45.j(h42Var, "task");
        synchronized (this.a) {
            if (!this.c) {
                if (a(h42Var, j, false)) {
                    this.a.a(this);
                }
                zfb zfbVar = zfb.a;
            } else if (h42Var.a()) {
                if (l42.i.isLoggable(Level.FINE)) {
                    i42.b(h42Var, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (l42.i.isLoggable(Level.FINE)) {
                    i42.b(h42Var, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean b() {
        h42 h42Var = this.d;
        if (h42Var != null) {
            y45.g(h42Var);
            if (h42Var.a()) {
                this.f = true;
            }
        }
        boolean z = false;
        for (int size = this.e.size() - 1; -1 < size; size--) {
            if (((h42) this.e.get(size)).a()) {
                h42 h42Var2 = (h42) this.e.get(size);
                if (l42.i.isLoggable(Level.FINE)) {
                    i42.b(h42Var2, this, "canceled");
                }
                this.e.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final h42 c() {
        return this.d;
    }

    public final boolean d() {
        return this.f;
    }

    public final ArrayList e() {
        return this.e;
    }

    public final String f() {
        return this.b;
    }

    public final boolean g() {
        return this.c;
    }

    public final l42 h() {
        return this.a;
    }

    public final void i() {
        this.f = false;
    }

    public final void j() {
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.a) {
            try {
                this.c = true;
                if (b()) {
                    this.a.a(this);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        return this.b;
    }

    public final boolean a(h42 h42Var, long j, boolean z) {
        String str;
        y45.j(h42Var, "task");
        h42Var.a(this);
        long jA = this.a.d().a();
        long j2 = jA + j;
        int iIndexOf = this.e.indexOf(h42Var);
        if (iIndexOf != -1) {
            if (h42Var.c() <= j2) {
                l42 l42Var = l42.h;
                if (l42.b.a().isLoggable(Level.FINE)) {
                    i42.b(h42Var, this, "already scheduled");
                }
                return false;
            }
            this.e.remove(iIndexOf);
        }
        h42Var.a(j2);
        l42 l42Var2 = l42.h;
        if (l42.b.a().isLoggable(Level.FINE)) {
            if (z) {
                str = "run again after " + i42.a(j2 - jA);
            } else {
                str = "scheduled after " + i42.a(j2 - jA);
            }
            i42.b(h42Var, this, str);
        }
        Iterator it = this.e.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (((h42) it.next()).c() - jA > j) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.e.size();
        }
        this.e.add(size, h42Var);
        return size == 0;
    }

    public final void a(h42 h42Var) {
        this.d = h42Var;
    }

    public final void a() {
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.a) {
            try {
                if (b()) {
                    this.a.a(this);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
