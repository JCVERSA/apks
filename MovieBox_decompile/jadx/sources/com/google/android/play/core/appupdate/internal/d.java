package com.google.android.play.core.appupdate.internal;

import android.os.IBinder;
import android.os.IInterface;

public abstract class d extends b implements e {
    public static e X0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        return iInterfaceQueryLocalInterface instanceof e ? (e) iInterfaceQueryLocalInterface : new c(iBinder);
    }
}
