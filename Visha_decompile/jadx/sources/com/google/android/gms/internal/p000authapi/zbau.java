package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import defpackage.c3e;
import defpackage.jea;
import defpackage.zda;

final class zbau extends zbx {
    final zda zba;

    public zbau(c3e c3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void zbb(Status status, BeginSignInResult beginSignInResult) throws RemoteException {
        jea.b(status, beginSignInResult, this.zba);
    }
}
