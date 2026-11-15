package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a19;
import defpackage.bgj;
import defpackage.wd8;
import defpackage.z09;
import java.util.Collections;
import java.util.List;

public class ActivityTransitionResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new bgj();
    private final List<ActivityTransitionEvent> zza;

    @Nullable
    private Bundle zzb;

    public ActivityTransitionResult(@NonNull List<ActivityTransitionEvent> list) {
        this.zzb = null;
        wd8.m(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i = 1; i < list.size(); i++) {
                wd8.a(list.get(i).getElapsedRealTimeNanos() >= list.get(i + (-1)).getElapsedRealTimeNanos());
            }
        }
        this.zza = Collections.unmodifiableList(list);
    }

    @Nullable
    public static ActivityTransitionResult extractResult(@NonNull Intent intent) {
        if (hasResult(intent)) {
            return (ActivityTransitionResult) a19.b(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT", CREATOR);
        }
        return null;
    }

    public static boolean hasResult(@Nullable Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zza.equals(((ActivityTransitionResult) obj).zza);
    }

    @NonNull
    public List<ActivityTransitionEvent> getTransitionEvents() {
        return this.zza;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        wd8.l(parcel);
        int iA = z09.a(parcel);
        z09.H(parcel, 1, getTransitionEvents(), false);
        z09.j(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }

    public ActivityTransitionResult(@NonNull List<ActivityTransitionEvent> list, @Nullable Bundle bundle) {
        this(list);
        this.zzb = bundle;
    }
}
