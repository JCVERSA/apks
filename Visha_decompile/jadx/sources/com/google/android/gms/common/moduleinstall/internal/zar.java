package com.google.android.gms.common.moduleinstall.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;

final class zar extends zaa {
    final zda zaa;

    public zar(v2e v2eVar, zda zdaVar) {
        this.zaa = zdaVar;
    }

    @Override
    public final void zae(Status status, @Nullable ModuleAvailabilityResponse moduleAvailabilityResponse) {
        jea.d(status, moduleAvailabilityResponse, this.zaa);
    }
}
