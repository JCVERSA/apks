package com.google.android.gms.internal.ads;

import defpackage.e7i;

public final class a8 extends y7 {
    public a8(e7i e7iVar) {
        super(null);
    }

    @Override
    public final u7 a(d8 d8Var, u7 u7Var) {
        u7 u7Var2;
        synchronized (d8Var) {
            try {
                u7Var2 = d8Var.listeners;
                if (u7Var2 != u7Var) {
                    d8Var.listeners = u7Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return u7Var2;
    }

    @Override
    public final c8 b(d8 d8Var, c8 c8Var) {
        c8 c8Var2;
        synchronized (d8Var) {
            try {
                c8Var2 = d8Var.waiters;
                if (c8Var2 != c8Var) {
                    d8Var.waiters = c8Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c8Var2;
    }

    @Override
    public final void c(c8 c8Var, c8 c8Var2) {
        c8Var.b = c8Var2;
    }

    @Override
    public final void d(c8 c8Var, Thread thread) {
        c8Var.a = thread;
    }

    @Override
    public final boolean e(d8 d8Var, u7 u7Var, u7 u7Var2) {
        synchronized (d8Var) {
            try {
                if (d8Var.listeners != u7Var) {
                    return false;
                }
                d8Var.listeners = u7Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean f(d8 d8Var, Object obj, Object obj2) {
        synchronized (d8Var) {
            try {
                if (d8Var.value != obj) {
                    return false;
                }
                d8Var.value = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean g(d8 d8Var, c8 c8Var, c8 c8Var2) {
        synchronized (d8Var) {
            try {
                if (d8Var.waiters != c8Var) {
                    return false;
                }
                d8Var.waiters = c8Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
