package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import defpackage.wd8;

@VisibleForTesting
public final class zzd extends zzz {

    @Nullable
    private a zza;
    private final int zzb;

    public zzd(@NonNull a aVar, int i) {
        this.zza = aVar;
        this.zzb = i;
    }

    @Override
    @BinderThread
    public final void onPostInitComplete(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        wd8.m(this.zza, "onPostInitComplete can be called only once per call to getRemoteService");
        this.zza.q(i, iBinder, bundle, this.zzb);
        this.zza = null;
    }

    @Override
    @BinderThread
    public final void zzb(int i, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override
    @BinderThread
    public final void zzc(int i, @NonNull IBinder iBinder, @NonNull zzj zzjVar) {
        a aVar = this.zza;
        wd8.m(aVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        wd8.l(zzjVar);
        aVar.u(zzjVar);
        onPostInitComplete(i, iBinder, zzjVar.zza);
    }
}
