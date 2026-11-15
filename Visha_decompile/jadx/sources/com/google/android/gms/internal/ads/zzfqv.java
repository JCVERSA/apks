package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzfqv extends zzaxy implements zzfqw {
    public static zzfqw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.lmd.protocol.ILmdOverlayService");
        return iInterfaceQueryLocalInterface instanceof zzfqw ? (zzfqw) iInterfaceQueryLocalInterface : new zzfqu(iBinder);
    }
}
