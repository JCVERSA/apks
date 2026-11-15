package com.google.android.gms.internal.ads;

import defpackage.b5h;
import defpackage.nrf;

public final class i5 implements b5h {
    public final zzexa a;

    public i5(zzexa zzexaVar) {
        this.a = zzexaVar;
    }

    @Override
    public final void zza() {
        zzexa zzexaVar = this.a;
        synchronized (zzexaVar) {
            zzexaVar.zza = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        nrf nrfVar = (nrf) obj;
        zzexa zzexaVar = this.a;
        synchronized (zzexaVar) {
            try {
                nrf nrfVar2 = zzexaVar.zza;
                if (nrfVar2 != null) {
                    nrfVar2.a();
                }
                zzexaVar.zza = nrfVar;
                nrfVar.j(zzexaVar);
                zzexaVar.zzg.n(new zzcnu(nrfVar, zzexaVar, zzexaVar.zzg, zzexaVar.zzi));
                nrfVar.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
