package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.bmh;
import defpackage.lkf;
import defpackage.tng;
import defpackage.yng;

public final class s4 implements tng {
    public final long a;
    public final yng b;
    public final zzfal c;

    public s4(long j, Context context, yng yngVar, lkf lkfVar, String str) {
        this.a = j;
        this.b = yngVar;
        bmh bmhVarZ = lkfVar.z();
        bmhVarZ.a(context);
        bmhVarZ.zza(str);
        this.c = bmhVarZ.zzc().zza();
    }

    @Override
    public final void a(zzm zzmVar) {
        try {
            this.c.zzf(zzmVar, new zzdst(this));
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void zza() {
    }

    @Override
    public final void zzc() {
        try {
            zzfal zzfalVar = this.c;
            zzfalVar.zzk(new zzdsu(this));
            zzfalVar.zzm(ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
