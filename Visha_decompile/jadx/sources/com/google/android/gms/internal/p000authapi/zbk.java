package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.api.Status;
import defpackage.oa0;

final class zbk extends zbd {
    private final oa0 zba;

    public zbk(oa0 oa0Var) {
        this.zba = oa0Var;
    }

    @Override
    public final void zbc(Status status) {
        this.zba.a(status);
    }
}
