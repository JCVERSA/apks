package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzck;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

@Deprecated
public final class PublisherAdViewOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzh();
    private final boolean zza;

    @Nullable
    private final zzcl zzb;

    @Nullable
    private final IBinder zzc;

    @Deprecated
    public static final class Builder {
        @NonNull
        public Builder setShouldDelayBannerRenderingListener(@NonNull ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            return this;
        }
    }

    public PublisherAdViewOptions(boolean z, @Nullable IBinder iBinder, @Nullable IBinder iBinder2) {
        this.zza = z;
        this.zzb = iBinder != null ? zzck.zzd(iBinder) : null;
        this.zzc = iBinder2;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, this.zza);
        zzcl zzclVar = this.zzb;
        z09.r(parcel, 2, zzclVar == null ? null : zzclVar.asBinder(), false);
        z09.r(parcel, 3, this.zzc, false);
        z09.b(parcel, iA);
    }

    @Nullable
    public final zzcl zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return this.zza;
    }
}
