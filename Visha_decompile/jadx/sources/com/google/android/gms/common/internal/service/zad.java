package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.oa0;

final class zad extends zaa {
    private final oa0 zaa;

    public zad(oa0 oa0Var) {
        this.zaa = oa0Var;
    }

    @Override
    public final void zab(int i) throws RemoteException {
        this.zaa.a(new Status(i));
    }
}
