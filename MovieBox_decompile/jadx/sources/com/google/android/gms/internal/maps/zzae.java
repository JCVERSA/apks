package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzae extends zza implements zzac {
    zzae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    }

    @Override
    public final void clearTileCache() throws RemoteException {
        zzb(2, zza());
    }

    @Override
    public final boolean getFadeIn() throws RemoteException {
        Parcel parcelZza = zza(11, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final String getId() throws RemoteException {
        Parcel parcelZza = zza(3, zza());
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override
    public final float getTransparency() throws RemoteException {
        Parcel parcelZza = zza(13, zza());
        float f10 = parcelZza.readFloat();
        parcelZza.recycle();
        return f10;
    }

    @Override
    public final float getZIndex() throws RemoteException {
        Parcel parcelZza = zza(5, zza());
        float f10 = parcelZza.readFloat();
        parcelZza.recycle();
        return f10;
    }

    @Override
    public final boolean isVisible() throws RemoteException {
        Parcel parcelZza = zza(7, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final void remove() throws RemoteException {
        zzb(1, zza());
    }

    @Override
    public final void setFadeIn(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(10, parcelZza);
    }

    @Override
    public final void setTransparency(float f10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f10);
        zzb(12, parcelZza);
    }

    @Override
    public final void setVisible(boolean z10) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.writeBoolean(parcelZza, z10);
        zzb(6, parcelZza);
    }

    @Override
    public final void setZIndex(float f10) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f10);
        zzb(4, parcelZza);
    }

    @Override
    public final boolean zza(zzac zzacVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, zzacVar);
        Parcel parcelZza2 = zza(8, parcelZza);
        boolean zZza = zzc.zza(parcelZza2);
        parcelZza2.recycle();
        return zZza;
    }

    @Override
    public final int zzj() throws RemoteException {
        Parcel parcelZza = zza(9, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }
}
