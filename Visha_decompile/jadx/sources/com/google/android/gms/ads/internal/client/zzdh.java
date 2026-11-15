package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;

public final class zzdh implements MuteThisAdReason {
    public final String a;
    public final zzdg b;

    public zzdh(zzdg zzdgVar) {
        String strZze;
        this.b = zzdgVar;
        try {
            strZze = zzdgVar.zze();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            strZze = null;
        }
        this.a = strZze;
    }

    @Override
    public final String getDescription() {
        return this.a;
    }

    public final String toString() {
        return this.a;
    }

    public final zzdg zza() {
        return this.b;
    }
}
