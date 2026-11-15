package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbp;
import com.google.android.gms.ads.internal.client.zzm;
import defpackage.cnh;
import defpackage.f5h;
import defpackage.lkf;
import defpackage.sdg;
import defpackage.x4h;
import defpackage.z4h;

public final class zzeiv extends zzbp {
    private final x4h zza;

    public zzeiv(Context context, lkf lkfVar, cnh cnhVar, sdg sdgVar, zzbk zzbkVar) {
        z4h z4hVar = new z4h(sdgVar, lkfVar.n());
        z4hVar.e(zzbkVar);
        this.zza = new x4h(new f5h(lkfVar, context, z4hVar, cnhVar), cnhVar.l());
    }

    @Override
    public final synchronized String zze() {
        return this.zza.a();
    }

    @Override
    public final synchronized String zzf() {
        return this.zza.b();
    }

    @Override
    public final void zzg(zzm zzmVar) throws RemoteException {
        this.zza.d(zzmVar, 1);
    }

    @Override
    public final synchronized void zzh(zzm zzmVar, int i) throws RemoteException {
        this.zza.d(zzmVar, i);
    }

    @Override
    public final synchronized boolean zzi() throws RemoteException {
        return this.zza.e();
    }
}
