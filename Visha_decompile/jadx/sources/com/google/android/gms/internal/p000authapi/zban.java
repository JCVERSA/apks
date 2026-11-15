package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
import defpackage.b3e;
import defpackage.jea;
import defpackage.zda;

final class zban extends zbag {
    final zda zba;

    public zban(b3e b3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void zbb(Status status, SavePasswordResult savePasswordResult) throws RemoteException {
        jea.b(status, savePasswordResult, this.zba);
    }
}
