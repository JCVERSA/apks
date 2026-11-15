package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzbwd extends IInterface {
    Bundle zzb() throws RemoteException;

    zzdx zzc() throws RemoteException;

    zzbwa zzd() throws RemoteException;

    String zze() throws RemoteException;

    void zzf(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException;

    void zzg(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException;

    void zzh(boolean z) throws RemoteException;

    void zzi(com.google.android.gms.ads.internal.client.zzdn zzdnVar) throws RemoteException;

    void zzj(zzdq zzdqVar) throws RemoteException;

    void zzk(zzbwg zzbwgVar) throws RemoteException;

    void zzl(zzbwr zzbwrVar) throws RemoteException;

    void zzm(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException;

    boolean zzo() throws RemoteException;

    void zzp(zzbwl zzbwlVar) throws RemoteException;
}
