package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public final String a;
    public final Bundle b;
    public final Bundle c;
    public final Context d;
    public final boolean e;
    public final int f;
    public final int g;
    public final String h;
    public final String i;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(@NonNull Context context, @NonNull String str, @NonNull Bundle bundle, @NonNull Bundle bundle2, boolean z, @Nullable Location location, int i, int i2, @Nullable String str2, @NonNull String str3) {
        this.a = str;
        this.b = bundle;
        this.c = bundle2;
        this.d = context;
        this.e = z;
        this.f = i;
        this.g = i2;
        this.h = str2;
        this.i = str3;
    }

    @NonNull
    public String getBidResponse() {
        return this.a;
    }

    @NonNull
    public Context getContext() {
        return this.d;
    }

    @Nullable
    public String getMaxAdContentRating() {
        return this.h;
    }

    @NonNull
    public Bundle getMediationExtras() {
        return this.c;
    }

    @NonNull
    public Bundle getServerParameters() {
        return this.b;
    }

    @NonNull
    public String getWatermark() {
        return this.i;
    }

    public boolean isTestRequest() {
        return this.e;
    }

    public int taggedForChildDirectedTreatment() {
        return this.f;
    }

    public int taggedForUnderAgeTreatment() {
        return this.g;
    }
}
