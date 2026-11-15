package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

public final class zzah extends zza implements zzaf {
    zzah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    @Override
    public final Tile getTile(int i10, int i11, int i12) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i10);
        parcelZza.writeInt(i11);
        parcelZza.writeInt(i12);
        Parcel parcelZza2 = zza(1, parcelZza);
        Tile tile = (Tile) zzc.zza(parcelZza2, Tile.CREATOR);
        parcelZza2.recycle();
        return tile;
    }
}
