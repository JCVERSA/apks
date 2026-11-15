package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a7e;
import defpackage.lu8;
import defpackage.z09;

public final class zzaa extends AbstractSafeParcelable implements lu8 {
    private final Status zzb;
    public static final zzaa zza = new zzaa(Status.RESULT_SUCCESS);
    public static final Parcelable.Creator<zzaa> CREATOR = new a7e();

    public zzaa(Status status) {
        this.zzb = status;
    }

    @Override
    public final Status getStatus() {
        return this.zzb;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zzb, i, false);
        z09.b(parcel, iA);
    }
}
