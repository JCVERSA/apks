package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import defpackage.oa0;

public class StatusCallback extends IStatusCallback.Stub {
    private final oa0 resultHolder;

    public StatusCallback(@NonNull oa0 oa0Var) {
        this.resultHolder = oa0Var;
    }

    @Override
    public void onResult(@NonNull Status status) {
        this.resultHolder.a(status);
    }
}
