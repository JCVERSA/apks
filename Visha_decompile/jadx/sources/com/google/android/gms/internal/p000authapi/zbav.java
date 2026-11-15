package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.c3e;
import defpackage.jea;
import defpackage.zda;

final class zbav extends IStatusCallback.Stub {
    final zda zba;

    public zbav(c3e c3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void onResult(Status status) throws RemoteException {
        jea.a(status, this.zba);
    }
}
