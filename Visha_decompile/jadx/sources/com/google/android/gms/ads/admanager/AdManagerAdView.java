package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import defpackage.cye;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(@NonNull Context context) {
        super(context, 0);
        wd8.m(context, "Context cannot be null");
    }

    public static void zza(@NonNull AdManagerAdView adManagerAdView, @NonNull AdManagerAdRequest adManagerAdRequest) {
        try {
            adManagerAdView.b.zzm(adManagerAdRequest.zza());
        } catch (IllegalStateException e) {
            uaf.c(adManagerAdView.getContext()).b(e, "AdManagerAdView.loadAd");
        }
    }

    @Nullable
    public AdSize[] getAdSizes() {
        return this.b.zzC();
    }

    @Nullable
    public AppEventListener getAppEventListener() {
        return this.b.zzh();
    }

    @NonNull
    public VideoController getVideoController() {
        return this.b.zzf();
    }

    @Nullable
    public VideoOptions getVideoOptions() {
        return this.b.zzg();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull final AdManagerAdRequest adManagerAdRequest) {
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(getContext());
        if (((Boolean) xze.f.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        AdManagerAdView.zza(this.zza, adManagerAdRequest);
                    }
                });
                return;
            }
        }
        this.b.zzm(adManagerAdRequest.zza());
    }

    public void recordManualImpression() {
        this.b.zzo();
    }

    public void setAdSizes(@NonNull AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.b.zzt(adSizeArr);
    }

    public void setAppEventListener(@Nullable AppEventListener appEventListener) {
        this.b.zzv(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.b.zzw(z);
    }

    public void setVideoOptions(@NonNull VideoOptions videoOptions) {
        this.b.zzy(videoOptions);
    }

    public final boolean zzb(zzbx zzbxVar) {
        return this.b.zzz(zzbxVar);
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, true);
        wd8.m(context, "Context cannot be null");
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, true);
        wd8.m(context, "Context cannot be null");
    }
}
