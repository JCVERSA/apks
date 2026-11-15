package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.common.api.Status;
import defpackage.b3e;
import defpackage.ud;
import defpackage.zda;

final class zbam extends zbae {
    final zda zba;

    public zbam(b3e b3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void zbb(Status status, SaveAccountLinkingTokenResult saveAccountLinkingTokenResult) throws RemoteException {
        if (status.isSuccess()) {
            this.zba.c(saveAccountLinkingTokenResult);
        } else {
            this.zba.b(ud.a(status));
        }
    }
}
