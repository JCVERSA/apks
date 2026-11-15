package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.List;
import java.util.Set;

public class AdRequest {

    @NonNull
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_AD_STRING = 11;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    public final zzeh a;

    public static class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public AdRequest build() {
            return new AdRequest(this);
        }

        @Override
        @NonNull
        public Builder self() {
            return this;
        }
    }

    public AdRequest(AbstractAdRequestBuilder abstractAdRequestBuilder) {
        this.a = new zzeh(abstractAdRequestBuilder.a, null);
    }

    @Nullable
    public String getAdString() {
        return this.a.zzh();
    }

    @NonNull
    public String getContentUrl() {
        return this.a.zzi();
    }

    @Nullable
    @Deprecated
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@NonNull Class<T> cls) {
        return this.a.zzd(cls);
    }

    @NonNull
    public Bundle getCustomTargeting() {
        return this.a.zze();
    }

    @NonNull
    public Set<String> getKeywords() {
        return this.a.zzn();
    }

    @NonNull
    public List<String> getNeighboringContentUrls() {
        return this.a.zzl();
    }

    @Nullable
    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(@NonNull Class<T> cls) {
        return this.a.zzf(cls);
    }

    @NonNull
    public String getRequestAgent() {
        return this.a.zzk();
    }

    public boolean isTestDevice(@NonNull Context context) {
        return this.a.zzq(context);
    }

    public final zzeh zza() {
        return this.a;
    }
}
