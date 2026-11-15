package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbae;
import com.google.android.gms.internal.ads.zzbah;
import java.util.concurrent.atomic.AtomicReference;

public final class fih implements nzf, p1g, tjh, zzr, c2g, zzf, t8g {
    public final ooh b;
    public final AtomicReference c = new AtomicReference();
    public final AtomicReference d = new AtomicReference();
    public final AtomicReference e = new AtomicReference();
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final AtomicReference h = new AtomicReference();
    public fih i = null;

    public fih(ooh oohVar) {
        this.b = oohVar;
    }

    public static fih a(fih fihVar) {
        fih fihVar2 = new fih(fihVar.b);
        fihVar2.i = fihVar;
        return fihVar2;
    }

    @Override
    public final void A(final zze zzeVar) {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.A(zzeVar);
            return;
        }
        AtomicReference atomicReference = this.c;
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbad) obj).zzc(zzeVar);
            }
        });
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbad) obj).zzb(zzeVar.zza);
            }
        });
    }

    @Override
    public final void b(final zzt zztVar) {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.b(zztVar);
        } else {
            hjh.a(this.h, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzdq) obj).zze(zztVar);
                }
            });
        }
    }

    @Override
    public final void g(tjh tjhVar) {
        this.i = (fih) tjhVar;
    }

    @Override
    public final void h(final zze zzeVar) {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.h(zzeVar);
        } else {
            hjh.a(this.e, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbah) obj).zzd(zzeVar);
                }
            });
        }
    }

    public final void k() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.k();
            return;
        }
        this.b.a();
        hjh.a(this.d, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbae) obj).zza();
            }
        });
        hjh.a(this.e, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbah) obj).zzc();
            }
        });
    }

    public final void n(final zzbaa zzbaaVar) {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.n(zzbaaVar);
        } else {
            hjh.a(this.c, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbad) obj).zzd(zzbaaVar);
                }
            });
        }
    }

    public final void o(zzr zzrVar) {
        this.g.set(zzrVar);
    }

    public final void p(zzdq zzdqVar) {
        this.h.set(zzdqVar);
    }

    public final void q(zzbad zzbadVar) {
        this.c.set(zzbadVar);
    }

    public final void s(zzbah zzbahVar) {
        this.e.set(zzbahVar);
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdd() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzdd();
        } else {
            hjh.a(this.e, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbah) obj).zzb();
                }
            });
        }
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzdo();
        } else {
            hjh.a(this.g, new gjh() {
                @Override
                public final void zza(Object obj) {
                    ((zzr) obj).zzdo();
                }
            });
        }
    }

    @Override
    public final void zzdp() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzdp();
            return;
        }
        hjh.a(this.g, new gjh() {
            @Override
            public final void zza(Object obj) {
                ((zzr) obj).zzdp();
            }
        });
        AtomicReference atomicReference = this.e;
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbah) obj).zzf();
            }
        });
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbah) obj).zze();
            }
        });
    }

    @Override
    public final void zzdr() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzdr();
        } else {
            hjh.a(this.g, new gjh() {
                @Override
                public final void zza(Object obj) {
                    ((zzr) obj).zzdr();
                }
            });
        }
    }

    @Override
    public final void zzds(final int i) {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzds(i);
        } else {
            hjh.a(this.g, new gjh() {
                @Override
                public final void zza(Object obj) {
                    ((zzr) obj).zzds(i);
                }
            });
        }
    }

    @Override
    public final void zzg() {
        fih fihVar = this.i;
        if (fihVar != null) {
            fihVar.zzg();
        } else {
            hjh.a(this.f, new gjh() {
                @Override
                public final void zza(Object obj) {
                    ((p1g) obj).zzg();
                }
            });
        }
    }

    @Override
    public final void zzu() {
    }
}
