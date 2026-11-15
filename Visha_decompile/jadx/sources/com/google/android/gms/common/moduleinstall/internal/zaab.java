package com.google.android.gms.common.moduleinstall.internal;

import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;

final class zaab extends zag {
    private final d zaa;

    public zaab(d dVar) {
        this.zaa = dVar;
    }

    @Override
    public final void zab(ModuleInstallStatusUpdate moduleInstallStatusUpdate) {
        this.zaa.c(new a(this, moduleInstallStatusUpdate));
    }
}
