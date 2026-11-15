package defpackage;

import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcs;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzt;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzbvk;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class k4h implements AppEventListener, p2g, b1g, nzf, d0g, zza, kzf, c2g, zzf, t8g {
    public final smg j;
    public final AtomicReference b = new AtomicReference();
    public final AtomicReference c = new AtomicReference();
    public final AtomicReference d = new AtomicReference();
    public final AtomicReference e = new AtomicReference();
    public final AtomicReference f = new AtomicReference();
    public final AtomicBoolean g = new AtomicBoolean(true);
    public final AtomicBoolean h = new AtomicBoolean(false);
    public final AtomicBoolean i = new AtomicBoolean(false);
    public final BlockingQueue k = new ArrayBlockingQueue(((Integer) zzbd.zzc().b(cye.W8)).intValue());

    public k4h(smg smgVar) {
        this.j = smgVar;
    }

    private final void zzo() {
        if (this.h.get() && this.i.get()) {
            BlockingQueue<Pair> blockingQueue = this.k;
            for (final Pair pair : blockingQueue) {
                hjh.a(this.c, new gjh() {
                    @Override
                    public final void zza(Object obj) throws RemoteException {
                        Pair pair2 = pair;
                        ((zzcl) obj).zzc((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            blockingQueue.clear();
            this.g.set(false);
        }
    }

    @Override
    public final void A(final zze zzeVar) {
        gjh gjhVar = new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzf(zzeVar);
            }
        };
        AtomicReference atomicReference = this.b;
        hjh.a(atomicReference, gjhVar);
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zze(zzeVar.zza);
            }
        });
        hjh.a(this.e, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbn) obj).zzb(zzeVar);
            }
        });
        this.g.set(false);
        this.k.clear();
    }

    @Override
    public final void a(zzbvk zzbvkVar, String str, String str2) {
    }

    @Override
    public final void b(final zzt zztVar) {
        hjh.a(this.d, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzdq) obj).zze(zztVar);
            }
        });
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
    }

    @Override
    public final void h(final zze zzeVar) {
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzcs) obj).zzd(zzeVar);
            }
        });
    }

    public final synchronized zzbk k() {
        return (zzbk) this.b.get();
    }

    public final synchronized zzcl n() {
        return (zzcl) this.c.get();
    }

    public final void o(zzbk zzbkVar) {
        this.b.set(zzbkVar);
    }

    @Override
    public final void onAdClicked() {
        if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
            return;
        }
        hjh.a(this.b, new i4h());
    }

    @Override
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (!this.g.get()) {
            hjh.a(this.c, new gjh() {
                @Override
                public final void zza(Object obj) throws RemoteException {
                    ((zzcl) obj).zzc(str, str2);
                }
            });
            return;
        }
        if (!this.k.offer(new Pair(str, str2))) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zze("The queue for app events is full, dropping the new event.");
            smg smgVar = this.j;
            if (smgVar != null) {
                rmg rmgVarA = smgVar.a();
                rmgVarA.b("action", "dae_action");
                rmgVarA.b("dae_name", str);
                rmgVarA.b("dae_data", str2);
                rmgVarA.j();
            }
        }
    }

    public final void p(zzbn zzbnVar) {
        this.e.set(zzbnVar);
    }

    public final void q(zzdq zzdqVar) {
        this.d.set(zzdqVar);
    }

    public final void s(zzcl zzclVar) {
        this.c.set(zzclVar);
        this.h.set(true);
        zzo();
    }

    public final void t(zzcs zzcsVar) {
        this.f.set(zzcsVar);
    }

    @Override
    public final void w(vmh vmhVar) {
        this.g.set(true);
        this.i.set(false);
    }

    @Override
    public final void zza() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzd();
            }
        });
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzcs) obj).zzc();
            }
        });
    }

    @Override
    public final void zzb() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzh();
            }
        });
    }

    @Override
    public final void zzc() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzj();
            }
        });
        gjh gjhVar = new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzcs) obj).zzf();
            }
        };
        AtomicReference atomicReference = this.f;
        hjh.a(atomicReference, gjhVar);
        hjh.a(atomicReference, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzcs) obj).zze();
            }
        });
    }

    @Override
    public final void zzdd() {
        if (((Boolean) zzbd.zzc().b(cye.Ra)).booleanValue()) {
            hjh.a(this.b, new i4h());
        }
        hjh.a(this.f, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzcs) obj).zzb();
            }
        });
    }

    @Override
    public final void zze() {
    }

    @Override
    public final void zzf() {
    }

    @Override
    public final void zzs() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzg();
            }
        });
    }

    @Override
    public final synchronized void zzt() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzi();
            }
        });
        hjh.a(this.e, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbn) obj).zzc();
            }
        });
        this.i.set(true);
        zzo();
    }

    @Override
    public final void zzu() {
        hjh.a(this.b, new gjh() {
            @Override
            public final void zza(Object obj) throws RemoteException {
                ((zzbk) obj).zzk();
            }
        });
    }
}
