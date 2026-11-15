package com.google.android.gms.internal.maps;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

public interface zzaf extends IInterface {
    Tile getTile(int i10, int i11, int i12) throws RemoteException;
}
