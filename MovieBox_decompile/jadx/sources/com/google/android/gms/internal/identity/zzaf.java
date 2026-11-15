package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionApi;

public final class zzaf implements ActivityRecognitionApi {
    @Override
    public final PendingResult<Status> removeActivityUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.execute(new zzad(this, googleApiClient, pendingIntent));
    }

    @Override
    public final PendingResult<Status> requestActivityUpdates(GoogleApiClient googleApiClient, long j10, PendingIntent pendingIntent) {
        return googleApiClient.execute(new zzac(this, googleApiClient, j10, pendingIntent));
    }
}
