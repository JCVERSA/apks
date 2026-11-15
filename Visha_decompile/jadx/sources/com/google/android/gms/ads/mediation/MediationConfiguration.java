package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;

public class MediationConfiguration {

    @NonNull
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";
    public final AdFormat a;
    public final Bundle b;

    public MediationConfiguration(@NonNull AdFormat adFormat, @NonNull Bundle bundle) {
        this.a = adFormat;
        this.b = bundle;
    }

    @NonNull
    public AdFormat getFormat() {
        return this.a;
    }

    @NonNull
    public Bundle getServerParameters() {
        return this.b;
    }
}
