package com.google.android.gms.common.moduleinstall.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;

final class zat extends zaa {
    final zda zaa;

    public zat(v2e v2eVar, zda zdaVar) {
        this.zaa = zdaVar;
    }

    @Override
    public final void zad(Status status, @Nullable ModuleInstallResponse moduleInstallResponse) {
        jea.d(status, moduleInstallResponse, this.zaa);
    }
}
