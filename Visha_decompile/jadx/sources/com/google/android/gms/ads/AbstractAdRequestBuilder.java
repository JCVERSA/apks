package com.google.android.gms.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.internal.client.zzeg;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import defpackage.wd8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public abstract class AbstractAdRequestBuilder<T extends AbstractAdRequestBuilder<T>> {
    public final zzeg a;

    public AbstractAdRequestBuilder() {
        zzeg zzegVar = new zzeg();
        this.a = zzegVar;
        zzegVar.zzs(AdRequest.DEVICE_ID_EMULATOR);
    }

    @NonNull
    @Deprecated
    public T addCustomEventExtrasBundle(@NonNull Class<? extends CustomEvent> cls, @NonNull Bundle bundle) {
        this.a.zzo(cls, bundle);
        return (T) self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull String str2) {
        if (!TextUtils.isEmpty(str2) && str2.contains(StringUtils.COMMA)) {
            zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
        }
        this.a.zzp(str, str2);
        return (T) self();
    }

    @NonNull
    public T addKeyword(@NonNull String str) {
        this.a.zzq(str);
        return (T) self();
    }

    @NonNull
    public T addNetworkExtrasBundle(@NonNull Class<? extends MediationExtrasReceiver> cls, @NonNull Bundle bundle) {
        zzeg zzegVar = this.a;
        zzegVar.zzr(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            zzegVar.zzt(AdRequest.DEVICE_ID_EMULATOR);
        }
        return (T) self();
    }

    public abstract AbstractAdRequestBuilder self();

    @NonNull
    public T setAdString(@NonNull String str) {
        this.a.zzu(str);
        return (T) self();
    }

    @NonNull
    public T setContentUrl(@NonNull String str) {
        wd8.m(str, "Content URL must be non-null.");
        wd8.g(str, "Content URL must be non-empty.");
        int length = str.length();
        wd8.c(length <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
        this.a.zzv(str);
        return (T) self();
    }

    @NonNull
    public T setHttpTimeoutMillis(int i) {
        this.a.zzw(i);
        return (T) self();
    }

    @NonNull
    public T setNeighboringContentUrls(@NonNull List<String> list) {
        if (list == null) {
            zzo.zzj("neighboring content URLs list should not be null");
            return (T) self();
        }
        this.a.zzy(list);
        return (T) self();
    }

    @NonNull
    public T setRequestAgent(@NonNull String str) {
        this.a.zzB(str);
        return (T) self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zza(@NonNull String str) {
        this.a.zzs(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzb(boolean z) {
        this.a.zzx(z);
        return self();
    }

    @NonNull
    public final AbstractAdRequestBuilder zzc(@NonNull Bundle bundle) {
        this.a.zzz(bundle);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzd(boolean z) {
        this.a.zzC(z);
        return self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull List<String> list) {
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2) && str2.contains(StringUtils.COMMA)) {
                    zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
                }
            }
            this.a.zzp(str, TextUtils.join(StringUtils.COMMA, list));
        }
        return (T) self();
    }
}
