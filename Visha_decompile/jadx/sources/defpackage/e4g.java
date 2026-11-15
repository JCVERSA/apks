package defpackage;

import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.internal.ads.zzbvk;

public final class e4g implements AppEventListener, OnAdMetadataChangedListener, kzf, zza, c2g, d0g, p1g, zzr, zzf, t8g {
    public final b4g b = new b4g(this, null);
    public k4h c;
    public o4h d;
    public fih e;
    public hlh f;

    public static void q(Object obj, c4g c4gVar) {
        if (obj != null) {
            c4gVar.zza(obj);
        }
    }

    @Override
    public final void a(final zzbvk zzbvkVar, final String str, final String str2) {
        q(this.c, new c4g(zzbvkVar, str, str2) {
            @Override
            public final void zza(Object obj) {
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).a(zzbvkVar, str, str2);
            }
        });
    }

    @Override
    public final void b(final zzt zztVar) {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).b(zztVar);
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).b(zztVar);
            }
        });
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).b(zztVar);
            }
        });
    }

    public final b4g g() {
        return this.b;
    }

    @Override
    public final void h(final zze zzeVar) {
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).h(zzeVar);
            }
        });
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).h(zzeVar);
            }
        });
    }

    @Override
    public final void onAdClicked() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).onAdClicked();
            }
        });
        q(this.d, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((o4h) obj).onAdClicked();
            }
        });
    }

    @Override
    public final void onAdMetadataChanged() {
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).onAdMetadataChanged();
            }
        });
    }

    @Override
    public final void onAppEvent(final String str, final String str2) {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).onAppEvent(str, str2);
            }
        });
    }

    @Override
    public final void zza() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zza();
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zza();
            }
        });
    }

    @Override
    public final void zzb() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zzb();
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zzb();
            }
        });
    }

    @Override
    public final void zzc() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zzc();
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zzc();
            }
        });
    }

    @Override
    public final void zzdE() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzdd() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zzdd();
            }
        });
        q(this.d, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((o4h) obj).zzdd();
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zzdd();
            }
        });
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzdd();
            }
        });
    }

    @Override
    public final void zzdi() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
            }
        });
    }

    @Override
    public final void zzdo() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzdo();
            }
        });
    }

    @Override
    public final void zzdp() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzdp();
            }
        });
    }

    @Override
    public final void zzdr() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzdr();
            }
        });
    }

    @Override
    public final void zzds(final int i) {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzds(i);
            }
        });
    }

    @Override
    public final void zze() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zze();
            }
        });
    }

    @Override
    public final void zzf() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
            }
        });
        q(this.f, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((hlh) obj).zzf();
            }
        });
    }

    @Override
    public final void zzg() {
        q(this.e, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((fih) obj).zzg();
            }
        });
    }

    @Override
    public final void zzs() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zzs();
            }
        });
    }

    @Override
    public final void zzu() {
        q(this.c, new c4g() {
            @Override
            public final void zza(Object obj) {
                ((k4h) obj).zzu();
            }
        });
    }
}
