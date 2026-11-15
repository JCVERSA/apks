package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

public interface zzbpb extends IInterface {
    void zzA(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, zzbpe zzbpeVar) throws RemoteException;

    void zzB(zzm zzmVar, String str, String str2) throws RemoteException;

    void zzC(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, zzbpe zzbpeVar) throws RemoteException;

    void zzD(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzE() throws RemoteException;

    void zzF() throws RemoteException;

    void zzG(boolean z) throws RemoteException;

    void zzH(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzI() throws RemoteException;

    void zzJ(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzK(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzL() throws RemoteException;

    boolean zzM() throws RemoteException;

    boolean zzN() throws RemoteException;

    zzbpj zzO() throws RemoteException;

    zzbpk zzP() throws RemoteException;

    Bundle zze() throws RemoteException;

    Bundle zzf() throws RemoteException;

    Bundle zzg() throws RemoteException;

    zzea zzh() throws RemoteException;

    zzbgn zzi() throws RemoteException;

    zzbph zzj() throws RemoteException;

    zzbpn zzk() throws RemoteException;

    zzbrm zzl() throws RemoteException;

    zzbrm zzm() throws RemoteException;

    IObjectWrapper zzn() throws RemoteException;

    void zzo() throws RemoteException;

    void zzp(IObjectWrapper iObjectWrapper, zzm zzmVar, @Nullable String str, zzbvv zzbvvVar, String str2) throws RemoteException;

    void zzq(IObjectWrapper iObjectWrapper, zzbll zzbllVar, List list) throws RemoteException;

    void zzr(IObjectWrapper iObjectWrapper, zzbvv zzbvvVar, List list) throws RemoteException;

    void zzs(zzm zzmVar, String str) throws RemoteException;

    void zzt(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, zzbpe zzbpeVar) throws RemoteException;

    void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, zzm zzmVar, String str, zzbpe zzbpeVar) throws RemoteException;

    void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, zzm zzmVar, String str, String str2, zzbpe zzbpeVar) throws RemoteException;

    void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, zzm zzmVar, String str, String str2, zzbpe zzbpeVar) throws RemoteException;

    void zzx(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, zzbpe zzbpeVar) throws RemoteException;

    void zzy(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, String str2, zzbpe zzbpeVar) throws RemoteException;

    void zzz(IObjectWrapper iObjectWrapper, zzm zzmVar, String str, String str2, zzbpe zzbpeVar, @Nullable zzbfi zzbfiVar, List list) throws RemoteException;
}
