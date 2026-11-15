package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzbvl;
import com.google.android.gms.internal.ads.zzbvq;
import com.google.android.gms.internal.ads.zzbwg;
import com.google.android.gms.internal.ads.zzbwk;
import com.google.android.gms.internal.ads.zzbwl;
import com.google.android.gms.internal.ads.zzbwu;
import java.util.concurrent.atomic.AtomicReference;

public final class hlh implements OnAdMetadataChangedListener, b1g, nzf, kzf, zzf, c2g, tjh, t8g {
    public final ooh b;
    public final AtomicReference c = new AtomicReference();
    public final AtomicReference d = new AtomicReference();
    public final AtomicReference e = new AtomicReference();
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final AtomicReference h = new AtomicReference();
    public final AtomicReference i = new AtomicReference();
    public hlh j = null;

    public hlh(ooh oohVar) {
        this.b = oohVar;
    }

    @Override
    public final void A(final zze zzeVar) {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.A(zzeVar);
            return;
        }
        final int i = zzeVar.zza;
        AtomicReference atomicReference = this.d;
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwk) obj).zzf(zzeVar);
            }
        });
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwk) obj).zze(i);
            }
        });
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbvq) obj).zzg(i);
            }
        });
    }

    @Override
    public final void a(final zzbvk zzbvkVar, final String str, final String str2) {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.a(zzbvkVar, str, str2);
            return;
        }
        hjh.a(this.e, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                zzbvk zzbvkVar2 = zzbvkVar;
                ((zzbwg) obj).zzk(new zzbwu(zzbvkVar2.zzc(), zzbvkVar2.zzb()));
            }
        });
        hjh.a(this.g, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                zzbvk zzbvkVar2 = zzbvkVar;
                ((zzbwl) obj).zze(new zzbwu(zzbvkVar2.zzc(), zzbvkVar2.zzb()), str, str2);
            }
        });
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbvq) obj).zze(zzbvkVar);
            }
        });
        hjh.a(this.h, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbvl) obj).zze(zzbvkVar, str, str2);
            }
        });
    }

    @Override
    public final void b(final zzt zztVar) {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.b(zztVar);
        } else {
            hjh.a(this.i, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzdq) obj).zze(zztVar);
                }
            });
        }
    }

    @Override
    public final void g(tjh tjhVar) {
        this.j = (hlh) tjhVar;
    }

    @Override
    public final void h(final zze zzeVar) {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.h(zzeVar);
            return;
        }
        AtomicReference atomicReference = this.e;
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwg) obj).zzi(zzeVar);
            }
        });
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwg) obj).zzh(zzeVar.zza);
            }
        });
    }

    public final void k(zzdq zzdqVar) {
        this.i.set(zzdqVar);
    }

    public final void n(zzbwg zzbwgVar) {
        this.e.set(zzbwgVar);
    }

    public final void o(zzbwk zzbwkVar) {
        this.d.set(zzbwkVar);
    }

    @Override
    public final void onAdMetadataChanged() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.onAdMetadataChanged();
        } else {
            hjh.a(this.c, new gjh() {
                @Override
                public final void zza(Object obj) {
                    ((OnAdMetadataChangedListener) obj).onAdMetadataChanged();
                }
            });
        }
    }

    public final void p(zzbvq zzbvqVar) {
        this.f.set(zzbvqVar);
    }

    public final void q(zzbvl zzbvlVar) {
        this.h.set(zzbvlVar);
    }

    public final void s(zzbwl zzbwlVar) {
        this.g.set(zzbwlVar);
    }

    @Override
    public final void zza() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zza();
            return;
        }
        this.b.a();
        hjh.a(this.e, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwg) obj).zzg();
            }
        });
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbvq) obj).zzf();
            }
        });
    }

    @Override
    public final void zzb() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zzb();
        } else {
            hjh.a(this.f, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbvq) obj).zzh();
                }
            });
        }
    }

    @Override
    public final void zzc() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zzc();
            return;
        }
        AtomicReference atomicReference = this.e;
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwg) obj).zzj();
            }
        });
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbvq) obj).zzj();
            }
        });
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbwg) obj).zzf();
            }
        });
    }

    @Override
    public final void zzdd() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zzdd();
        } else {
            hjh.a(this.e, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbwg) obj).zze();
                }
            });
        }
    }

    @Override
    public final void zze() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zze();
        } else {
            hjh.a(this.f, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbvq) obj).zzk();
                }
            });
        }
    }

    @Override
    public final void zzf() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zzf();
        } else {
            hjh.a(this.f, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbvq) obj).zzl();
                }
            });
        }
    }

    public final void zzg(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.c.set(onAdMetadataChangedListener);
    }

    @Override
    public final void zzt() {
        hlh hlhVar = this.j;
        if (hlhVar != null) {
            hlhVar.zzt();
        } else {
            hjh.a(this.d, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbwk) obj).zzg();
                }
            });
            hjh.a(this.f, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzbvq) obj).zzi();
                }
            });
        }
    }

    @Override
    public final void zzu() {
    }
}
