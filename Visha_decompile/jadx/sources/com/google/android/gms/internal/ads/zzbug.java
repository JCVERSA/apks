package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ibf;
import defpackage.z09;
import java.util.Collections;
import java.util.List;

public final class zzbug extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbug> CREATOR = new ibf();
    public final boolean zza;

    @Nullable
    public final List zzb;

    public zzbug() {
        this(false, Collections.emptyList());
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int iA = z09.a(parcel);
        z09.g(parcel, 2, z);
        z09.F(parcel, 3, this.zzb, false);
        z09.b(parcel, iA);
    }

    public zzbug(boolean z, List list) {
        this.zza = z;
        this.zzb = list;
    }
}
