package com.google.android.gms.internal.identity;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

abstract class zzcq extends BaseImplementation.ApiMethodImpl {
    public zzcq(GoogleApiClient googleApiClient) {
        super((Api<?>) zzbi.zzb, googleApiClient);
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
