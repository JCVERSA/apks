package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zbj extends zba {
    final zbk zba;

    zbj(zbk zbkVar) {
        this.zba = zbkVar;
    }

    @Override
    public final void zbb(Status status) throws RemoteException {
        this.zba.setResult(status);
    }
}
