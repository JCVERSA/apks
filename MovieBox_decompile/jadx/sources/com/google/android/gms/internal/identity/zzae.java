package com.google.android.gms.internal.identity;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.ActivityRecognition;

abstract class zzae extends BaseImplementation.ApiMethodImpl {
    public zzae(GoogleApiClient googleApiClient) {
        super(ActivityRecognition.API, googleApiClient);
    }

    @Override
    @KeepForSdk
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    @Override
    public final Result createFailedResult(Status status) {
        return status;
    }
}
