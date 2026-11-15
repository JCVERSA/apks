package com.google.android.gms.ads.formats;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

public final class AdManagerAdViewOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzc();
    private final boolean zza;

    public static final class Builder {
        public boolean a = false;

        @NonNull
        public AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this, null);
        }

        @NonNull
        public Builder setManualImpressionsEnabled(boolean z) {
            this.a = z;
            return this;
        }
    }

    public AdManagerAdViewOptions(Builder builder, zzb zzbVar) {
        this.zza = builder.a;
    }

    public boolean getManualImpressionsEnabled() {
        return this.zza;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, getManualImpressionsEnabled());
        z09.b(parcel, iA);
    }

    public AdManagerAdViewOptions(boolean z) {
        this.zza = z;
    }
}
