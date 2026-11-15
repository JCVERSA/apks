package com.google.android.gms.common.moduleinstall.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import defpackage.f15;
import defpackage.jea;
import defpackage.v2e;
import defpackage.zda;
import java.util.concurrent.atomic.AtomicReference;

final class zau extends zaa {
    final AtomicReference zaa;
    final zda zab;
    final f15 zac;
    final v2e zad;

    public zau(v2e v2eVar, AtomicReference atomicReference, zda zdaVar, f15 f15Var) {
        this.zaa = atomicReference;
        this.zab = zdaVar;
    }

    @Override
    public final void zad(Status status, @Nullable ModuleInstallResponse moduleInstallResponse) {
        if (moduleInstallResponse != null) {
            this.zaa.set(moduleInstallResponse);
        }
        jea.d(status, null, this.zab);
        if (!status.isSuccess() || (moduleInstallResponse != null && moduleInstallResponse.zaa())) {
            e.b(null, f15.class.getSimpleName());
            throw null;
        }
    }
}
