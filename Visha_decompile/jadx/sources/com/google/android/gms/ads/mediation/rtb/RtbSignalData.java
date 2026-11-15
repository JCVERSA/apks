package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

public class RtbSignalData {
    public final Context a;
    public final List b;
    public final Bundle c;
    public final AdSize d;

    public RtbSignalData(@NonNull Context context, @NonNull List<MediationConfiguration> list, @NonNull Bundle bundle, @Nullable AdSize adSize) {
        this.a = context;
        this.b = list;
        this.c = bundle;
        this.d = adSize;
    }

    @Nullable
    public AdSize getAdSize() {
        return this.d;
    }

    @Nullable
    @Deprecated
    public MediationConfiguration getConfiguration() {
        List list = this.b;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return (MediationConfiguration) list.get(0);
    }

    @NonNull
    public List<MediationConfiguration> getConfigurations() {
        return this.b;
    }

    @NonNull
    public Context getContext() {
        return this.a;
    }

    @NonNull
    public Bundle getNetworkExtras() {
        return this.c;
    }
}
