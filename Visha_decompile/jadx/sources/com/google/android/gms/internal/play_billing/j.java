package com.google.android.gms.internal.play_billing;

import defpackage.p3g;

public final class j extends h {
    public j(p3g p3gVar) {
        super(null);
    }

    @Override
    public final e a(m mVar, e eVar) {
        e eVar2;
        synchronized (mVar) {
            try {
                eVar2 = mVar.c;
                if (eVar2 != eVar) {
                    mVar.c = eVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar2;
    }

    @Override
    public final l b(m mVar, l lVar) {
        l lVar2;
        synchronized (mVar) {
            try {
                lVar2 = mVar.d;
                if (lVar2 != lVar) {
                    mVar.d = lVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar2;
    }

    @Override
    public final void c(l lVar, l lVar2) {
        lVar.b = lVar2;
    }

    @Override
    public final void d(l lVar, Thread thread) {
        lVar.a = thread;
    }

    @Override
    public final boolean e(m mVar, e eVar, e eVar2) {
        synchronized (mVar) {
            try {
                if (mVar.c != eVar) {
                    return false;
                }
                mVar.c = eVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean f(m mVar, Object obj, Object obj2) {
        synchronized (mVar) {
            try {
                if (mVar.b != obj) {
                    return false;
                }
                mVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean g(m mVar, l lVar, l lVar2) {
        synchronized (mVar) {
            try {
                if (mVar.d != lVar) {
                    return false;
                }
                mVar.d = lVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
