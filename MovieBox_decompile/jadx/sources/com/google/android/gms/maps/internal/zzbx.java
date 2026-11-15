package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzbx extends com.google.android.gms.internal.maps.zza implements IUiSettingsDelegate {
    zzbx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IUiSettingsDelegate");
    }

    @Override
    public final boolean isCompassEnabled() throws RemoteException {
        Parcel parcelZza = zza(10, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isIndoorLevelPickerEnabled() throws RemoteException {
        Parcel parcelZza = zza(17, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isMapToolbarEnabled() throws RemoteException {
        Parcel parcelZza = zza(19, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isMyLocationButtonEnabled() throws RemoteException {
        Parcel parcelZza = zza(11, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isRotateGesturesEnabled() throws RemoteException {
        Parcel parcelZza = zza(15, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isScrollGesturesEnabled() throws RemoteException {
        Parcel parcelZza = zza(12, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isScrollGesturesEnabledDuringRotateOrZoom() throws RemoteException {
        Parcel parcelZza = zza(21, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isTiltGesturesEnabled() throws RemoteException {
        Parcel parcelZza = zza(14, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isZoomControlsEnabled() throws RemoteException {
        Parcel parcelZza = zza(9, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean isZoomGesturesEnabled() throws RemoteException {
        Parcel parcelZza = zza(13, zza());
        boolean zZza = com.google.android.gms.internal.maps.zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final void setAllGesturesEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(8, parcelZza);
    }

    @Override
    public final void setCompassEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(2, parcelZza);
    }

    @Override
    public final void setIndoorLevelPickerEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(16, parcelZza);
    }

    @Override
    public final void setMapToolbarEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(18, parcelZza);
    }

    @Override
    public final void setMyLocationButtonEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(3, parcelZza);
    }

    @Override
    public final void setRotateGesturesEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(7, parcelZza);
    }

    @Override
    public final void setScrollGesturesEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(4, parcelZza);
    }

    @Override
    public final void setScrollGesturesEnabledDuringRotateOrZoom(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(20, parcelZza);
    }

    @Override
    public final void setTiltGesturesEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(6, parcelZza);
    }

    @Override
    public final void setZoomControlsEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(1, parcelZza);
    }

    @Override
    public final void setZoomGesturesEnabled(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcelZza, z10);
        zzb(5, parcelZza);
    }
}
