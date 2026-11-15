package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a19;
import defpackage.jc7;
import defpackage.tbf;
import defpackage.wd8;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SleepSegmentEvent extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SleepSegmentEvent> CREATOR = new tbf();
    public static final int STATUS_MISSING_DATA = 1;
    public static final int STATUS_NOT_DETECTED = 2;
    public static final int STATUS_SUCCESSFUL = 0;
    private final long zza;
    private final long zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;

    public SleepSegmentEvent(long j, long j2, int i, int i2, int i3) {
        wd8.b(j <= j2, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.zza = j;
        this.zzb = j2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
    }

    @NonNull
    public static List<SleepSegmentEvent> extractEvents(@NonNull Intent intent) {
        ArrayList arrayList;
        wd8.l(intent);
        if (hasEvents(intent) && (arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT")) != null) {
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                byte[] bArr = (byte[]) arrayList.get(i);
                wd8.l(bArr);
                arrayList2.add((SleepSegmentEvent) a19.a(bArr, CREATOR));
            }
            return Collections.unmodifiableList(arrayList2);
        }
        return Collections.emptyList();
    }

    public static boolean hasEvents(@Nullable Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SleepSegmentEvent) {
            SleepSegmentEvent sleepSegmentEvent = (SleepSegmentEvent) obj;
            if (this.zza == sleepSegmentEvent.getStartTimeMillis() && this.zzb == sleepSegmentEvent.getEndTimeMillis() && this.zzc == sleepSegmentEvent.getStatus() && this.zzd == sleepSegmentEvent.zzd && this.zze == sleepSegmentEvent.zze) {
                return true;
            }
        }
        return false;
    }

    public long getEndTimeMillis() {
        return this.zzb;
    }

    public long getSegmentDurationMillis() {
        return this.zzb - this.zza;
    }

    public long getStartTimeMillis() {
        return this.zza;
    }

    public int getStatus() {
        return this.zzc;
    }

    public int hashCode() {
        return jc7.b(Long.valueOf(this.zza), Long.valueOf(this.zzb), Integer.valueOf(this.zzc));
    }

    @NonNull
    public String toString() {
        long j = this.zza;
        long j2 = this.zzb;
        int i = this.zzc;
        StringBuilder sb = new StringBuilder(84);
        sb.append("startMillis=");
        sb.append(j);
        sb.append(", endMillis=");
        sb.append(j2);
        sb.append(", status=");
        sb.append(i);
        return sb.toString();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        wd8.l(parcel);
        int iA = z09.a(parcel);
        z09.w(parcel, 1, getStartTimeMillis());
        z09.w(parcel, 2, getEndTimeMillis());
        z09.s(parcel, 3, getStatus());
        z09.s(parcel, 4, this.zzd);
        z09.s(parcel, 5, this.zze);
        z09.b(parcel, iA);
    }
}
