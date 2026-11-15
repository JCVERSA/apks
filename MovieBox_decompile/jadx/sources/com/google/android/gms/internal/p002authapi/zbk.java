package com.google.android.gms.internal.p002authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

final class zbk extends zbd {
    private final BaseImplementation.ResultHolder zba;

    zbk(BaseImplementation.ResultHolder resultHolder) {
        this.zba = resultHolder;
    }

    @Override
    public final void zbc(Status status) {
        this.zba.setResult(status);
    }
}
