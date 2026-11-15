package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a19;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.ydj;
import defpackage.z09;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

public class ActivityTransitionRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new ydj();

    @NonNull
    public static final Comparator<ActivityTransition> IS_SAME_TRANSITION = new zzn();
    private final List<ActivityTransition> zza;

    @Nullable
    private final String zzb;
    private final List<ClientIdentity> zzc;

    @Nullable
    private String zzd;

    public ActivityTransitionRequest(@NonNull List<ActivityTransition> list) {
        this(list, null, null, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
            if (jc7.a(this.zza, activityTransitionRequest.zza) && jc7.a(this.zzb, activityTransitionRequest.zzb) && jc7.a(this.zzd, activityTransitionRequest.zzd) && jc7.a(this.zzc, activityTransitionRequest.zzc)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.zza.hashCode() * 31;
        String str = this.zzb;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        List<ClientIdentity> list = this.zzc;
        int iHashCode3 = (iHashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.zzd;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public void serializeToIntentExtra(@NonNull Intent intent) {
        wd8.l(intent);
        a19.e(this, intent, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_REQUEST");
    }

    @NonNull
    public String toString() {
        String strValueOf = String.valueOf(this.zza);
        String str = this.zzb;
        String strValueOf2 = String.valueOf(this.zzc);
        String str2 = this.zzd;
        int length = strValueOf.length();
        int length2 = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 79 + length2 + strValueOf2.length() + String.valueOf(str2).length());
        sb.append("ActivityTransitionRequest [mTransitions=");
        sb.append(strValueOf);
        sb.append(", mTag='");
        sb.append(str);
        sb.append("', mClients=");
        sb.append(strValueOf2);
        sb.append(", mAttributionTag=");
        sb.append(str2);
        sb.append(']');
        return sb.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        wd8.l(parcel);
        int iA = z09.a(parcel);
        z09.H(parcel, 1, this.zza, false);
        z09.D(parcel, 2, this.zzb, false);
        z09.H(parcel, 3, this.zzc, false);
        z09.D(parcel, 4, this.zzd, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final ActivityTransitionRequest zza(@Nullable String str) {
        this.zzd = str;
        return this;
    }

    public ActivityTransitionRequest(@NonNull List<ActivityTransition> list, @Nullable String str, @Nullable List<ClientIdentity> list2, @Nullable String str2) {
        wd8.m(list, "transitions can't be null");
        wd8.b(list.size() > 0, "transitions can't be empty.");
        wd8.l(list);
        TreeSet treeSet = new TreeSet(IS_SAME_TRANSITION);
        for (ActivityTransition activityTransition : list) {
            wd8.b(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.zza = Collections.unmodifiableList(list);
        this.zzb = str;
        this.zzc = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzd = str2;
    }
}
