package com.google.android.gms.ads.formats;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.VideoController;
import java.util.List;

@Deprecated
public abstract class UnifiedNativeAd {
    public abstract void performClick(@NonNull Bundle bundle);

    public abstract boolean recordImpression(@NonNull Bundle bundle);

    public abstract void reportTouchEvent(@NonNull Bundle bundle);

    @NonNull
    @Deprecated
    public abstract VideoController zza();

    @NonNull
    public abstract NativeAd.Image zzb();

    @NonNull
    public abstract Double zzc();

    @NonNull
    public abstract Object zzd();

    @NonNull
    public abstract String zze();

    @NonNull
    public abstract String zzf();

    @NonNull
    public abstract String zzg();

    @NonNull
    public abstract String zzh();

    @NonNull
    public abstract String zzi();

    @NonNull
    public abstract String zzj();

    @NonNull
    public abstract List zzk();
}
