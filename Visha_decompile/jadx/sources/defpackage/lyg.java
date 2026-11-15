package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbph;
import com.google.android.gms.internal.ads.zzcps;
import com.google.android.gms.internal.ads.zzedw;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public final class lyg implements pxg {
    public final Context a;
    public final atf b;
    public final Executor c;

    public lyg(Context context, atf atfVar, Executor executor) {
        this.a = context;
        this.b = atfVar;
        this.c = executor;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        zzr zzrVar;
        enh enhVar = vmhVar.a.a;
        zzr zzrVar2 = enhVar.e;
        if (zzrVar2.zzn) {
            zzrVar = new zzr(this.a, zzc.zzd(zzrVar2.zze, zzrVar2.zzb));
        } else {
            zzrVar = (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) ? new zzr(this.a, zzc.zze(zzrVar2.zze, zzrVar2.zzb)) : knh.a(this.a, hmhVar.u);
        }
        zzr zzrVar3 = zzrVar;
        if (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) {
            ((eoh) nxgVar.b).s(this.a, zzrVar3, enhVar.d, hmhVar.v.toString(), zzbs.zzm(hmhVar.s), (zzbpe) nxgVar.c);
        } else {
            ((eoh) nxgVar.b).r(this.a, zzrVar3, enhVar.d, hmhVar.v.toString(), zzbs.zzm(hmhVar.s), (zzbpe) nxgVar.c);
        }
    }

    @Override
    public final Object b(vmh vmhVar, final hmh hmhVar, nxg nxgVar) throws zzfbw {
        final View viewF;
        if (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) {
            zzbph zzbphVarH = ((eoh) nxgVar.b).h();
            if (zzbphVarH == null) {
                int i = zze.zza;
                zzo.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfbw(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                viewF = (View) ObjectWrapper.unwrap(zzbphVarH.zze());
                boolean zZzf = zzbphVarH.zzf();
                if (viewF == null) {
                    throw new zzfbw(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zZzf) {
                    try {
                        viewF = (View) j8.n(j8.h(null), new k7i() {
                            @Override
                            public final im5 zza(Object obj) {
                                return j8.h(zzcps.zza(this.a.a, viewF, hmhVar));
                            }
                        }, zef.f).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfbw(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfbw(e2);
            }
        } else {
            viewF = ((eoh) nxgVar.b).f();
        }
        atf atfVar = this.b;
        puf pufVar = new puf(vmhVar, hmhVar, nxgVar.a);
        final eoh eohVar = (eoh) nxgVar.b;
        Objects.requireNonNull(eohVar);
        vrf vrfVarA = atfVar.a(pufVar, new asf(viewF, null, new ztf() {
            @Override
            public final zzea zza() {
                return eohVar.g();
            }
        }, (imh) hmhVar.u.get(0)));
        vrfVarA.i().F(viewF);
        vrfVarA.c().C(new qpf(eohVar), this.c);
        ((zzedw) nxgVar.c).zzc(vrfVarA.g());
        return vrfVarA.h();
    }
}
