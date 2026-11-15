package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import defpackage.lu8;
import defpackage.o3e;
import defpackage.y3e;

public final class a extends y3e {
    public a(c cVar) {
        super(cVar);
    }

    @Override
    public final lu8 d(Status status) {
        return status;
    }

    @Override
    public final void m(com.google.android.gms.common.api.a.b bVar) throws RemoteException {
        o3e o3eVar = (o3e) bVar;
        ((zbs) o3eVar.getService()).zbd(new zbh(this), o3eVar.L());
    }
}
