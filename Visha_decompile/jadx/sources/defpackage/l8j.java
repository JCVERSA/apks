package defpackage;

import com.google.android.gms.internal.play_billing.t;

public final class l8j extends e5g {
    public l8j() {
        super(null);
    }

    @Override
    public final void a(haj hajVar, haj hajVar2) {
        hajVar.b = hajVar2;
    }

    @Override
    public final void b(haj hajVar, Thread thread) {
        hajVar.a = thread;
    }

    @Override
    public final boolean c(t tVar, hui huiVar, hui huiVar2) {
        synchronized (tVar) {
            try {
                if (tVar.c != huiVar) {
                    return false;
                }
                tVar.c = huiVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean d(t tVar, Object obj, Object obj2) {
        synchronized (tVar) {
            try {
                if (tVar.b != obj) {
                    return false;
                }
                tVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean e(t tVar, haj hajVar, haj hajVar2) {
        synchronized (tVar) {
            try {
                if (tVar.d != hajVar) {
                    return false;
                }
                tVar.d = hajVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
