package com.google.android.gms.common.moduleinstall.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;

final class zaw extends zaa {
    final zda zaa;

    public zaw(v2e v2eVar, zda zdaVar) {
        this.zaa = zdaVar;
    }

    @Override
    public final void zac(Status status, @Nullable ModuleInstallIntentResponse moduleInstallIntentResponse) {
        jea.d(status, moduleInstallIntentResponse, this.zaa);
    }
}
