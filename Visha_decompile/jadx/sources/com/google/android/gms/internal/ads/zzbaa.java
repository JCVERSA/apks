package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzbaa extends IInterface {
    zzbx zze() throws RemoteException;

    @Nullable
    zzdx zzf() throws RemoteException;

    void zzg(boolean z) throws RemoteException;

    void zzh(zzdq zzdqVar) throws RemoteException;

    void zzi(IObjectWrapper iObjectWrapper, zzbah zzbahVar) throws RemoteException;
}
