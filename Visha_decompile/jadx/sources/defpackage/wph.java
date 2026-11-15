package defpackage;

import com.google.android.gms.internal.ads.j8;

public final class wph {
    public final nph a;
    public final im5 b;
    public boolean c = false;
    public boolean d = false;

    public wph(final voh vohVar, final mph mphVar, final nph nphVar) {
        this.a = nphVar;
        this.b = j8.f(j8.n(mphVar.a(nphVar), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return wph.b(this.a, mphVar, vohVar, nphVar, (bph) obj);
            }
        }, nphVar.zzb()), Exception.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return wph.a(this.a, mphVar, (Exception) obj);
            }
        }, nphVar.zzb());
    }

    public static im5 a(wph wphVar, mph mphVar, Exception exc) {
        synchronized (wphVar) {
            wphVar.d = true;
            throw exc;
        }
    }

    public static im5 b(wph wphVar, mph mphVar, voh vohVar, nph nphVar, bph bphVar) {
        im5 im5VarH;
        synchronized (wphVar) {
            try {
                wphVar.d = true;
                mphVar.b(bphVar);
                if (wphVar.c) {
                    im5VarH = j8.h(new lph(bphVar, nphVar));
                } else {
                    vohVar.d(nphVar.zza(), bphVar);
                    im5VarH = j8.h(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return im5VarH;
    }

    public final synchronized im5 c(nph nphVar) {
        if (!this.d && !this.c) {
            nph nphVar2 = this.a;
            if (nphVar2.zza() != null && nphVar.zza() != null && nphVar2.zza().equals(nphVar.zza())) {
                this.c = true;
                return this.b;
            }
        }
        return null;
    }

    public final synchronized void d(v7i v7iVar) {
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.i();
            }
        };
        nph nphVar = this.a;
        j8.r(j8.n(this.b, k7iVar, nphVar.zzb()), v7iVar, nphVar.zzb());
    }
}
