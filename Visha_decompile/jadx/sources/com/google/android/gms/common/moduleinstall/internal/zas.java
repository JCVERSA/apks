package com.google.android.gms.common.moduleinstall.internal;

import com.google.android.gms.common.api.Status;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;

final class zas extends zaa {
    final zda zaa;

    public zas(v2e v2eVar, zda zdaVar) {
        this.zaa = zdaVar;
    }

    @Override
    public final void zab(Status status) {
        jea.d(status, null, this.zaa);
    }
}
