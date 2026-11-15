package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.lu8;
import defpackage.oa0;
import defpackage.wd8;

public abstract class b extends BasePendingResult implements oa0 {
    public final com.google.android.gms.common.api.a.c o;
    public final com.google.android.gms.common.api.a p;

    public b(com.google.android.gms.common.api.a aVar, com.google.android.gms.common.api.c cVar) {
        super((com.google.android.gms.common.api.c) wd8.m(cVar, "GoogleApiClient must not be null"));
        wd8.m(aVar, "Api must not be null");
        this.o = aVar.b();
        this.p = aVar;
    }

    public abstract void m(com.google.android.gms.common.api.a.b bVar);

    public void n(lu8 lu8Var) {
    }

    public final void o(com.google.android.gms.common.api.a.b bVar) throws DeadObjectException {
        try {
            m(bVar);
        } catch (DeadObjectException e) {
            p(e);
            throw e;
        } catch (RemoteException e2) {
            p(e2);
        }
    }

    public final void p(RemoteException remoteException) {
        q(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    public final void q(Status status) {
        wd8.b(!status.isSuccess(), "Failed result must not be success");
        lu8 lu8VarD = d(status);
        g(lu8VarD);
        n(lu8VarD);
    }
}
