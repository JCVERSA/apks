package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.lzy.okgo.model.Progress;
import defpackage.i5e;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;

public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new i5e();
    private final String tag;
    private final int versionCode;
    private final String zza;
    private final String zzb;

    public PlaceReport(int i, String str, String str2, String str3) {
        this.versionCode = i;
        this.zza = str;
        this.tag = str2;
        this.zzb = str3;
    }

    @VisibleForTesting
    public static PlaceReport create(String str, String str2) {
        wd8.l(str);
        wd8.f(str2);
        wd8.f("unknown");
        wd8.b(true, "Invalid source");
        return new PlaceReport(1, str, str2, "unknown");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return jc7.a(this.zza, placeReport.zza) && jc7.a(this.tag, placeReport.tag) && jc7.a(this.zzb, placeReport.zzb);
    }

    public String getPlaceId() {
        return this.zza;
    }

    public String getTag() {
        return this.tag;
    }

    public int hashCode() {
        return jc7.b(this.zza, this.tag, this.zzb);
    }

    public String toString() {
        jc7.a aVarC = jc7.c(this);
        aVarC.a("placeId", this.zza);
        aVarC.a(Progress.TAG, this.tag);
        if (!"unknown".equals(this.zzb)) {
            aVarC.a("source", this.zzb);
        }
        return aVarC.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.versionCode);
        z09.D(parcel, 2, getPlaceId(), false);
        z09.D(parcel, 3, getTag(), false);
        z09.D(parcel, 4, this.zzb, false);
        z09.b(parcel, iA);
    }
}
