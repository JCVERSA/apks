package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public final class zzf extends com.google.android.gms.internal.maps.zza implements zze {
    zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override
    public final IMapViewDelegate zza(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException {
        IMapViewDelegate zzkVar;
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, googleMapOptions);
        Parcel parcelZza2 = zza(3, parcelZza);
        IBinder strongBinder = parcelZza2.readStrongBinder();
        if (strongBinder == null) {
            zzkVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            zzkVar = iInterfaceQueryLocalInterface instanceof IMapViewDelegate ? (IMapViewDelegate) iInterfaceQueryLocalInterface : new zzk(strongBinder);
        }
        parcelZza2.recycle();
        return zzkVar;
    }

    @Override
    public final IMapFragmentDelegate zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
        IMapFragmentDelegate zzjVar;
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        Parcel parcelZza2 = zza(2, parcelZza);
        IBinder strongBinder = parcelZza2.readStrongBinder();
        if (strongBinder == null) {
            zzjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
            zzjVar = iInterfaceQueryLocalInterface instanceof IMapFragmentDelegate ? (IMapFragmentDelegate) iInterfaceQueryLocalInterface : new zzj(strongBinder);
        }
        parcelZza2.recycle();
        return zzjVar;
    }

    @Override
    public final IStreetViewPanoramaFragmentDelegate zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        IStreetViewPanoramaFragmentDelegate zzbvVar;
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        Parcel parcelZza2 = zza(8, parcelZza);
        IBinder strongBinder = parcelZza2.readStrongBinder();
        if (strongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            zzbvVar = iInterfaceQueryLocalInterface instanceof IStreetViewPanoramaFragmentDelegate ? (IStreetViewPanoramaFragmentDelegate) iInterfaceQueryLocalInterface : new zzbv(strongBinder);
        }
        parcelZza2.recycle();
        return zzbvVar;
    }

    @Override
    public final ICameraUpdateFactoryDelegate zze() throws RemoteException {
        ICameraUpdateFactoryDelegate zzbVar;
        Parcel parcelZza = zza(4, zza());
        IBinder strongBinder = parcelZza.readStrongBinder();
        if (strongBinder == null) {
            zzbVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            zzbVar = iInterfaceQueryLocalInterface instanceof ICameraUpdateFactoryDelegate ? (ICameraUpdateFactoryDelegate) iInterfaceQueryLocalInterface : new zzb(strongBinder);
        }
        parcelZza.recycle();
        return zzbVar;
    }

    @Override
    public final com.google.android.gms.internal.maps.zze zzf() throws RemoteException {
        Parcel parcelZza = zza(5, zza());
        com.google.android.gms.internal.maps.zze zzeVarZzb = com.google.android.gms.internal.maps.zzf.zzb(parcelZza.readStrongBinder());
        parcelZza.recycle();
        return zzeVarZzb;
    }

    @Override
    public final void zza(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        parcelZza.writeInt(i10);
        zzb(6, parcelZza);
    }

    @Override
    public final IStreetViewPanoramaViewDelegate zza(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
        IStreetViewPanoramaViewDelegate zzbwVar;
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, iObjectWrapper);
        com.google.android.gms.internal.maps.zzc.zza(parcelZza, streetViewPanoramaOptions);
        Parcel parcelZza2 = zza(7, parcelZza);
        IBinder strongBinder = parcelZza2.readStrongBinder();
        if (strongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            if (iInterfaceQueryLocalInterface instanceof IStreetViewPanoramaViewDelegate) {
                zzbwVar = (IStreetViewPanoramaViewDelegate) iInterfaceQueryLocalInterface;
            } else {
                zzbwVar = new zzbw(strongBinder);
            }
        }
        parcelZza2.recycle();
        return zzbwVar;
    }
}
