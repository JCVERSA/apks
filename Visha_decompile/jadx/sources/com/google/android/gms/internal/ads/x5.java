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

public final class x5 extends z5 {
    public x5(ClientApi clientApi, Context context, int i, zzboy zzboyVar, zzfp zzfpVar, zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zth zthVar, fy0 fy0Var) {
        super(clientApi, context, i, zzboyVar, zzfpVar, zzceVar, scheduledExecutorService, zthVar, fy0Var);
    }

    @Override
    public final zzdx i(Object obj) {
        try {
            return ((zzbaa) obj).zzf();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Failed to get response info for the app open ad.", e);
            return null;
        }
    }

    @Override
    public final im5 j(Context context) {
        n8 n8VarH = n8.h();
        zzbx zzbxVarZzc = this.a.zzc(ObjectWrapper.wrap(context), com.google.android.gms.ads.internal.client.zzr.zzb(), this.e.zza, this.d, this.c);
        if (zzbxVarZzc != null) {
            try {
                zzbxVarZzc.zzH(new zzfis(this, n8VarH, this.e));
                zzbxVarZzc.zzab(this.e.zzc);
            } catch (RemoteException e) {
                zzo.zzk("Failed to load app open ad.", e);
                n8VarH.zzd(new zzfiq(1, "remote exception"));
            }
        } else {
            n8VarH.zzd(new zzfiq(1, "Failed to create an app open ad manager."));
        }
        return n8VarH;
    }
}
