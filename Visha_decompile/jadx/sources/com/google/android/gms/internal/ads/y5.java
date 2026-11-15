package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzfp;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.fy0;
import defpackage.im5;
import defpackage.zth;
import java.util.concurrent.ScheduledExecutorService;

public final class y5 extends z5 {
    public y5(ClientApi clientApi, Context context, int i, zzboy zzboyVar, zzfp zzfpVar, zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zth zthVar, fy0 fy0Var) {
        super(clientApi, context, i, zzboyVar, zzfpVar, zzceVar, scheduledExecutorService, zthVar, fy0Var);
    }

    @Override
    public final zzdx i(Object obj) {
        try {
            return ((zzbx) obj).zzk();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Failed to get response info for  the interstitial ad.", e);
            return null;
        }
    }

    @Override
    public final im5 j(Context context) {
        n8 n8VarH = n8.h();
        zzbx zzbxVarZze = this.a.zze(ObjectWrapper.wrap(context), new com.google.android.gms.ads.internal.client.zzr(), this.e.zza, this.d, this.c);
        if (zzbxVarZze != null) {
            try {
                zzbxVarZze.zzy(this.e.zzc, new zzfiv(this, n8VarH, zzbxVarZze));
            } catch (RemoteException e) {
                zzo.zzk("Failed to load interstitial ad.", e);
                n8VarH.zzd(new zzfiq(1, "remote exception"));
            }
        } else {
            n8VarH.zzd(new zzfiq(1, "Failed to create an interstitial ad manager."));
        }
        return n8VarH;
    }
}
