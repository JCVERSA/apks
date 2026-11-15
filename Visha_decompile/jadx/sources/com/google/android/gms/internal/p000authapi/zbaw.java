package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.c3e;
import defpackage.jea;
import defpackage.zda;

final class zbaw extends zbac {
    final zda zba;

    public zbaw(c3e c3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void zbb(Status status, PendingIntent pendingIntent) throws RemoteException {
        jea.b(status, pendingIntent, this.zba);
    }
}
