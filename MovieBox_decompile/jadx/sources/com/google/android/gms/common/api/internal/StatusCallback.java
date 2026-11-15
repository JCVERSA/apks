package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;

@KeepForSdk
public class StatusCallback extends IStatusCallback.Stub {

    @KeepForSdk
    private final BaseImplementation.ResultHolder<Status> resultHolder;

    @KeepForSdk
    public StatusCallback(@NonNull BaseImplementation.ResultHolder<Status> resultHolder) {
        this.resultHolder = resultHolder;
    }

    @Override
    @KeepForSdk
    public void onResult(@NonNull Status status) {
        this.resultHolder.setResult(status);
    }
}
