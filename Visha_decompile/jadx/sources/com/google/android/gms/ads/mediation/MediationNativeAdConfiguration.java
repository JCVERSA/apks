package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.internal.ads.zzbfi;

public class MediationNativeAdConfiguration extends MediationAdConfiguration {
    public final zzbfi j;

    public MediationNativeAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, @Nullable Location location, int i, int i2, @Nullable String str2, String str3, @Nullable zzbfi zzbfiVar) {
        super(context, str, bundle, bundle2, z, location, i, i2, str2, str3);
        this.j = zzbfiVar;
    }

    @NonNull
    public NativeAdOptions getNativeAdOptions() {
        return zzbfi.zza(this.j);
    }
}
