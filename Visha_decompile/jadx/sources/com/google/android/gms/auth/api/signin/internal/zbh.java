package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zbh extends zba {
    final a zba;

    public zbh(a aVar) {
        this.zba = aVar;
    }

    @Override
    public final void zbc(Status status) throws RemoteException {
        this.zba.g(status);
    }
}
