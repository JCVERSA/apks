package com.google.android.gms.internal.ads;

import defpackage.e8i;
import defpackage.im5;
import defpackage.n8i;
import defpackage.v2i;
import defpackage.x5i;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;

public abstract class f8 extends g8 {
    public static final e8i i = new e8i(f8.class);
    public zzfwr f;
    public final boolean g;
    public final boolean h;

    public f8(zzfwr zzfwrVar, boolean z, boolean z2) {
        super(zzfwrVar.size());
        this.f = zzfwrVar;
        this.g = z;
        this.h = z2;
    }

    public static void w(Throwable th) {
        i.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    public static boolean y(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    @Override
    public final void h(Set set) {
        set.getClass();
        if (isCancelled()) {
            return;
        }
        Throwable thZzi = zzi();
        Objects.requireNonNull(thZzi);
        y(set, thZzi);
    }

    public abstract void p(int i2, Object obj);

    public abstract void q();

    public final void r() {
        Objects.requireNonNull(this.f);
        if (this.f.isEmpty()) {
            q();
            return;
        }
        if (this.g) {
            x5i it = this.f.iterator();
            final int i2 = 0;
            while (it.hasNext()) {
                final im5 im5Var = (im5) it.next();
                int i3 = i2 + 1;
                if (im5Var.isDone()) {
                    x(i2, im5Var);
                } else {
                    im5Var.addListener(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.x(i2, im5Var);
                        }
                    }, zzgbg.INSTANCE);
                }
                i2 = i3;
            }
            return;
        }
        zzfwr zzfwrVar = this.f;
        final zzfwr zzfwrVar2 = true != this.h ? null : zzfwrVar;
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.zza.u(zzfwrVar2);
            }
        };
        x5i it2 = zzfwrVar.iterator();
        while (it2.hasNext()) {
            im5 im5Var2 = (im5) it2.next();
            if (im5Var2.isDone()) {
                u(zzfwrVar2);
            } else {
                im5Var2.addListener(runnable, zzgbg.INSTANCE);
            }
        }
    }

    public void s(int i2) {
        this.f = null;
    }

    public final void t(int i2, Future future) {
        try {
            p(i2, n8i.a(future));
        } catch (ExecutionException e) {
            v(e.getCause());
        } catch (Throwable th) {
            v(th);
        }
    }

    public final void u(zzfwr zzfwrVar) {
        int iJ = j();
        int i2 = 0;
        v2i.m(iJ >= 0, "Less than 0 remaining futures");
        if (iJ == 0) {
            if (zzfwrVar != null) {
                x5i it = zzfwrVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        t(i2, future);
                    }
                    i2++;
                }
            }
            o();
            q();
            s(2);
        }
    }

    public final void v(Throwable th) {
        th.getClass();
        if (this.g && !zzd(th) && y(l(), th)) {
            w(th);
        } else if (th instanceof Error) {
            w(th);
        }
    }

    public final void x(int i2, im5 im5Var) {
        try {
            if (im5Var.isCancelled()) {
                this.f = null;
                cancel(false);
            } else {
                t(i2, im5Var);
            }
        } finally {
            u(null);
        }
    }

    @Override
    public final String zza() {
        zzfwr zzfwrVar = this.f;
        return zzfwrVar != null ? "futures=".concat(zzfwrVar.toString()) : super.zza();
    }

    @Override
    public final void zzb() {
        zzfwr zzfwrVar = this.f;
        s(1);
        if ((zzfwrVar != null) && isCancelled()) {
            boolean zZzo = zzo();
            x5i it = zzfwrVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zZzo);
            }
        }
    }
}
