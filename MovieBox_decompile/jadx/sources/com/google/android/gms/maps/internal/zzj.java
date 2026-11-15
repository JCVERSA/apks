package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;

public final class zzj extends com.google.android.gms.internal.maps.zza implements IMapFragmentDelegate {
    zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapFragmentDelegate");
    }

    @Override
    public final IGoogleMapDelegate getMap() throws RemoteException {
        IGoogleMapDelegate zzgVar;
        Parcel parcelZza = zza(1, zza());
        IBinder strongBinder = parcelZza.readStrongBinder();
        if (strongBinder == null) {
            zzgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            zzgVar = iInterfaceQueryLocalInterface instanceof IGoogleMapDelegate ? (IGoogleMapDelegate) iInterfaceQueryLocalInterface : new zzg(strongBinder);
        }
        parcelZza.recycle();
        return zzgVar;
    }

    @Override
    public final void getMapAsync(zzap zzapVar) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, zzapVar);
        zzb(12, parcelZza);
    }

    @Override
    public final boolean isReady() throws RemoteException {
        Parcel parcelZza = zza(11, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, bundle);
        zzb(3, parcelZza);
    }

    @Override
    public final IObjectWrapper onCreateView(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper2);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, bundle);
        Parcel parcelZza2 = zza(4, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZza2.readStrongBinder());
        parcelZza2.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final void onDestroy() throws RemoteException {
        zzb(8, zza());
    }

    @Override
    public final void onDestroyView() throws RemoteException {
        zzb(7, zza());
    }

    @Override
    public final void onEnterAmbient(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, bundle);
        zzb(13, parcelZza);
    }

    @Override
    public final void onExitAmbient() throws RemoteException {
        zzb(14, zza());
    }

    @Override
    public final void onInflate(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, googleMapOptions);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, bundle);
        zzb(2, parcelZza);
    }

    @Override
    public final void onLowMemory() throws RemoteException {
        zzb(9, zza());
    }

    @Override
    public final void onPause() throws RemoteException {
        zzb(6, zza());
    }

    @Override
    public final void onResume() throws RemoteException {
        zzb(5, zza());
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, bundle);
        Parcel parcelZza2 = zza(10, parcelZza);
        if (parcelZza2.readInt() != 0) {
            bundle.readFromParcel(parcelZza2);
        }
        parcelZza2.recycle();
    }

    @Override
    public final void onStart() throws RemoteException {
        zzb(15, zza());
    }

    @Override
    public final void onStop() throws RemoteException {
        zzb(16, zza());
    }
}
