package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

public final class zzfw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfw> CREATOR = new zzfx();
    public final boolean zza;
    public final boolean zzb;
    public final boolean zzc;

    public zzfw(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int iA = z09.a(parcel);
        z09.g(parcel, 2, z);
        z09.g(parcel, 3, this.zzb);
        z09.g(parcel, 4, this.zzc);
        z09.b(parcel, iA);
    }

    public zzfw(boolean z, boolean z2, boolean z3) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = z3;
    }
}
