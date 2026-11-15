package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.IntentSenderRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.d28;
import defpackage.evg;
import defpackage.jc7;
import defpackage.la1;
import defpackage.lu8;
import defpackage.wd8;
import defpackage.z09;

public final class Status extends AbstractSafeParcelable implements lu8, ReflectedParcelable {
    private final int zza;

    @Nullable
    private final String zzb;

    @Nullable
    private final PendingIntent zzc;

    @Nullable
    private final ConnectionResult zzd;

    @NonNull
    public static final Status RESULT_SUCCESS_CACHE = new Status(-1);

    @NonNull
    public static final Status RESULT_SUCCESS = new Status(0);

    @NonNull
    public static final Status RESULT_INTERRUPTED = new Status(14);

    @NonNull
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);

    @NonNull
    public static final Status RESULT_TIMEOUT = new Status(15);

    @NonNull
    public static final Status RESULT_CANCELED = new Status(16);

    @NonNull
    public static final Status RESULT_API_NOT_CONNECTED = new Status(17);

    @NonNull
    public static final Status RESULT_DEAD_CLIENT = new Status(18);

    @NonNull
    public static final Parcelable.Creator<Status> CREATOR = new evg();

    public Status(int i, @Nullable String str, @Nullable PendingIntent pendingIntent, @Nullable ConnectionResult connectionResult) {
        this.zza = i;
        this.zzb = str;
        this.zzc = pendingIntent;
        this.zzd = connectionResult;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.zza == status.zza && jc7.a(this.zzb, status.zzb) && jc7.a(this.zzc, status.zzc) && jc7.a(this.zzd, status.zzd);
    }

    @Nullable
    public ConnectionResult getConnectionResult() {
        return this.zzd;
    }

    @Nullable
    public PendingIntent getResolution() {
        return this.zzc;
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.zza;
    }

    @Nullable
    public String getStatusMessage() {
        return this.zzb;
    }

    public boolean hasResolution() {
        return this.zzc != null;
    }

    public int hashCode() {
        return jc7.b(Integer.valueOf(this.zza), this.zzb, this.zzc, this.zzd);
    }

    public boolean isCanceled() {
        return this.zza == 16;
    }

    public boolean isInterrupted() {
        return this.zza == 14;
    }

    public boolean isSuccess() {
        return this.zza <= 0;
    }

    public void startResolutionForResult(@NonNull Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            Bundle bundle = d28.l() ? ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle() : null;
            PendingIntent pendingIntent = this.zzc;
            wd8.l(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0, bundle);
        }
    }

    @NonNull
    public String toString() {
        jc7.a aVarC = jc7.c(this);
        aVarC.a("statusCode", zza());
        aVarC.a("resolution", this.zzc);
        return aVarC.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, getStatusCode());
        z09.D(parcel, 2, getStatusMessage(), false);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.B(parcel, 4, getConnectionResult(), i, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final String zza() {
        String str = this.zzb;
        return str != null ? str : la1.a(this.zza);
    }

    public Status(int i) {
        this(i, (String) null);
    }

    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str) {
        this(connectionResult, str, 17);
    }

    public Status(int i, @Nullable String str) {
        this(i, str, (PendingIntent) null);
    }

    @Deprecated
    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str, int i) {
        this(i, str, connectionResult.getResolution(), connectionResult);
    }

    public Status(int i, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(i, str, pendingIntent, null);
    }

    public void startResolutionForResult(@NonNull ActivityResultLauncher<IntentSenderRequest> activityResultLauncher) {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzc;
            wd8.l(pendingIntent);
            activityResultLauncher.launch(new IntentSenderRequest.Builder(pendingIntent.getIntentSender()).build());
        }
    }
}
