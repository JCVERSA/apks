package com.google.android.gms.internal.p002authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

final class zbf extends zbd {
    final zbg zba;

    zbf(zbg zbgVar) {
        this.zba = zbgVar;
    }

    @Override
    public final void zbb(Status status, Credential credential) {
        this.zba.setResult(new zbe(status, credential));
    }

    @Override
    public final void zbc(Status status) {
        this.zba.setResult(new zbe(status, null));
    }
}
