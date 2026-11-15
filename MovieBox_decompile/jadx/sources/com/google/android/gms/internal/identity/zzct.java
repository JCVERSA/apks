package com.google.android.gms.internal.identity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.location.GeofencingClient;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

public final class zzct extends GoogleApi implements GeofencingClient {
    public static final int zza = 0;

    public zzct(@NonNull Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) zzbi.zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override
    public final Task<Void> addGeofences(final GeofencingRequest geofencingRequest, final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzdz) obj).zzE(geofencingRequest, pendingIntent, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2424).build());
    }

    @Override
    public final Task<Void> removeGeofences(final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzdz) obj).zzF(zzem.zzb(pendingIntent), (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2425).build());
    }

    public zzct(@NonNull Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzbi.zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override
    public final Task<Void> removeGeofences(final List<String> list) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzdz) obj).zzF(zzem.zza(list), (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2425).build());
    }
}
