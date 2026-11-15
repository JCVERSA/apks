package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzbvn extends IInterface {
    Bundle zzb() throws RemoteException;

    zzdx zzc() throws RemoteException;

    String zzd() throws RemoteException;

    void zze() throws RemoteException;

    void zzf(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzg(zzbvr zzbvrVar) throws RemoteException;

    void zzh() throws RemoteException;

    void zzi(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzj() throws RemoteException;

    void zzk(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzl(zzcb zzcbVar) throws RemoteException;

    void zzm(String str) throws RemoteException;

    void zzn(boolean z) throws RemoteException;

    void zzo(zzbvq zzbvqVar) throws RemoteException;

    void zzp(String str) throws RemoteException;

    void zzq() throws RemoteException;

    void zzr(@Nullable IObjectWrapper iObjectWrapper) throws RemoteException;

    boolean zzs() throws RemoteException;

    boolean zzt() throws RemoteException;

    void zzu(zzbvl zzbvlVar) throws RemoteException;
}
