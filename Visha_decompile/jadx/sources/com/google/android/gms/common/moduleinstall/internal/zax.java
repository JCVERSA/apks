package com.google.android.gms.common.moduleinstall.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;

final class zax extends IStatusCallback.Stub {
    final zda zaa;

    public zax(v2e v2eVar, zda zdaVar) {
        this.zaa = zdaVar;
    }

    @Override
    public final void onResult(Status status) {
        jea.d(status, null, this.zaa);
    }
}
