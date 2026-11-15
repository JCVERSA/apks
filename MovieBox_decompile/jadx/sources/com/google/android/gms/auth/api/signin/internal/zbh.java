package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zbh extends zba {
    final zbi zba;

    zbh(zbi zbiVar) {
        this.zba = zbiVar;
    }

    @Override
    public final void zbc(Status status) throws RemoteException {
        this.zba.setResult(status);
    }
}
