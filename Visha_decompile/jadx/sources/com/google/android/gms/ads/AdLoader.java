package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzfe;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.internal.ads.q3;
import com.google.android.gms.internal.ads.u3;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbsn;
import defpackage.cye;
import defpackage.wd8;
import defpackage.xze;

public class AdLoader {
    public final zzq a;
    public final Context b;
    public final zzbq c;

    public static class Builder {
        public final Context a;
        public final zzbt b;

        public Builder(@NonNull Context context, @NonNull String str) {
            Context context2 = (Context) wd8.m(context, "context cannot be null");
            zzbt zzbtVarZzd = zzbb.zza().zzd(context, str, new zzbou());
            this.a = context2;
            this.b = zzbtVarZzd;
        }

        @NonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.a, this.b.zze(), zzq.zza);
            } catch (RemoteException e) {
                zzo.zzh("Failed to build AdLoader.", e);
                return new AdLoader(this.a, new zzfe().zzc(), zzq.zza);
            }
        }

        @NonNull
        public Builder forAdManagerAdView(@NonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @NonNull AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.b.zzj(new zzbhw(onAdManagerAdViewLoadedListener), new zzr(this.a, adSizeArr));
            } catch (RemoteException e) {
                zzo.zzk("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @NonNull
        public Builder forCustomFormatAd(@NonNull String str, @NonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            u3 u3Var = new u3(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.b.zzh(str, u3Var.b(), u3Var.a());
            } catch (RemoteException e) {
                zzo.zzk("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @NonNull
        public Builder forNativeAd(@NonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.b.zzk(new zzbsn(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzo.zzk("Failed to add google native ad listener", e);
            }
            return this;
        }

        @NonNull
        public Builder withAdListener(@NonNull AdListener adListener) {
            try {
                this.b.zzl(new com.google.android.gms.ads.internal.client.zzg(adListener));
            } catch (RemoteException e) {
                zzo.zzk("Failed to set AdListener.", e);
            }
            return this;
        }

        @NonNull
        public Builder withAdManagerAdViewOptions(@NonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.b.zzm(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @NonNull
        public Builder withNativeAdOptions(@NonNull NativeAdOptions nativeAdOptions) {
            try {
                this.b.zzo(new zzbfi(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzfw(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzc(), nativeAdOptions.getMediaAspectRatio(), nativeAdOptions.zza(), nativeAdOptions.zzb(), nativeAdOptions.zzd() - 1));
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public final Builder zza(String str, com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
            q3 q3Var = new q3(zzgVar, zzfVar);
            try {
                this.b.zzh(str, q3Var.d(), q3Var.c());
            } catch (RemoteException e) {
                zzo.zzk("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @Deprecated
        public final Builder zzb(com.google.android.gms.ads.formats.zzi zziVar) {
            try {
                this.b.zzk(new zzbhx(zziVar));
            } catch (RemoteException e) {
                zzo.zzk("Failed to add google native ad listener", e);
            }
            return this;
        }

        @NonNull
        @Deprecated
        public final Builder zzc(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
            try {
                this.b.zzo(new zzbfi(nativeAdOptions));
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    public AdLoader(Context context, zzbq zzbqVar, zzq zzqVar) {
        this.b = context;
        this.c = zzbqVar;
        this.a = zzqVar;
    }

    public static void zza(AdLoader adLoader, zzeh zzehVar) {
        try {
            adLoader.c.zzg(adLoader.a.zza(adLoader.b, zzehVar));
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ad.", e);
        }
    }

    public final void a(final zzeh zzehVar) {
        Context context = this.b;
        cye.a(context);
        if (((Boolean) xze.c.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        AdLoader.zza(this.zza, zzehVar);
                    }
                });
                return;
            }
        }
        try {
            this.c.zzg(this.a.zza(context, zzehVar));
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ad.", e);
        }
    }

    public boolean isLoading() {
        try {
            return this.c.zzi();
        } catch (RemoteException e) {
            zzo.zzk("Failed to check if ad is loading.", e);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull AdRequest adRequest) {
        a(adRequest.a);
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAds(@NonNull AdRequest adRequest, int i) {
        try {
            this.c.zzh(this.a.zza(this.b, adRequest.a), i);
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ads.", e);
        }
    }

    public void loadAd(@NonNull AdManagerAdRequest adManagerAdRequest) {
        a(adManagerAdRequest.a);
    }
}
