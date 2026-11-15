package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.hcf;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;
import java.util.List;

public class SleepSegmentRequest extends AbstractSafeParcelable {
    public static final int CLASSIFY_EVENTS_ONLY = 2;

    @NonNull
    public static final Parcelable.Creator<SleepSegmentRequest> CREATOR = new hcf();
    public static final int SEGMENT_AND_CLASSIFY_EVENTS = 0;
    public static final int SEGMENT_EVENTS_ONLY = 1;

    @Nullable
    private final List<zzbx> zza;
    private final int zzb;

    public SleepSegmentRequest(int i) {
        this(null, i);
    }

    @NonNull
    public static SleepSegmentRequest getDefaultSleepSegmentRequest() {
        return new SleepSegmentRequest(null, 0);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepSegmentRequest)) {
            return false;
        }
        SleepSegmentRequest sleepSegmentRequest = (SleepSegmentRequest) obj;
        return jc7.a(this.zza, sleepSegmentRequest.zza) && this.zzb == sleepSegmentRequest.zzb;
    }

    public int getRequestedDataType() {
        return this.zzb;
    }

    public int hashCode() {
        return jc7.b(this.zza, Integer.valueOf(this.zzb));
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        wd8.l(parcel);
        int iA = z09.a(parcel);
        z09.H(parcel, 1, this.zza, false);
        z09.s(parcel, 2, getRequestedDataType());
        z09.b(parcel, iA);
    }

    public SleepSegmentRequest(@Nullable List<zzbx> list, int i) {
        this.zza = list;
        this.zzb = i;
    }
}
