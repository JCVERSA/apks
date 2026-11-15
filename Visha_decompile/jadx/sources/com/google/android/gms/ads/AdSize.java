package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;

public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public final int a;
    public final int b;
    public final String c;
    public boolean d;
    public boolean e;
    public int f;
    public boolean g;
    public int h;

    @NonNull
    public static final AdSize BANNER = new AdSize(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, 50, "320x50_mb");

    @NonNull
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");

    @NonNull
    public static final AdSize LARGE_BANNER = new AdSize(TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, 100, "320x100_as");

    @NonNull
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");

    @NonNull
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");

    @NonNull
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");

    @NonNull
    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");

    @NonNull
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");

    @NonNull
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");

    @NonNull
    public static final AdSize zza = new AdSize(50, 50, "50x50_mb");

    static {
        new AdSize(-3, 0, "search_v2");
    }

    public AdSize(int i, int i2) {
        this(i, i2, (i == -1 ? "FULL" : String.valueOf(i)) + "x" + (i2 == -2 ? "AUTO" : String.valueOf(i2)) + "_as");
    }

    @NonNull
    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize adSizeZzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 0);
        adSizeZzd.d = true;
        return adSizeZzd;
    }

    @NonNull
    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int iZza = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 0);
        if (iZza == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.f = iZza;
        adSize.e = true;
        return adSize;
    }

    @NonNull
    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.f = i2;
        adSize.e = true;
        if (i2 < 32) {
            zzo.zzj("The maximum height set for the inline adaptive ad size was " + i2 + " dp, which is below the minimum recommended value of 32 dp.");
        }
        return adSize;
    }

    @NonNull
    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize adSizeZzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 2);
        adSizeZzd.d = true;
        return adSizeZzd;
    }

    @NonNull
    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int iZza = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (iZza == -1) {
            return INVALID;
        }
        adSize.f = iZza;
        adSize.e = true;
        return adSize;
    }

    @NonNull
    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize adSizeZzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 1);
        adSizeZzd.d = true;
        return adSizeZzd;
    }

    @NonNull
    public static AdSize getPortraitInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int iZza = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (iZza == -1) {
            return INVALID;
        }
        adSize.f = iZza;
        adSize.e = true;
        return adSize;
    }

    public final int a() {
        return this.h;
    }

    public final int b() {
        return this.f;
    }

    public final void c(int i) {
        this.f = i;
    }

    public final void d(int i) {
        this.h = i;
    }

    public final void e(boolean z) {
        this.e = true;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.a == adSize.a && this.b == adSize.b && this.c.equals(adSize.c);
    }

    public final void f(boolean z) {
        this.g = true;
    }

    public final boolean g() {
        return this.d;
    }

    public int getHeight() {
        return this.b;
    }

    public int getHeightInPixels(@NonNull Context context) {
        int i = this.b;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzr.zza(context.getResources().getDisplayMetrics());
        }
        zzbb.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzy(context, i);
    }

    public int getWidth() {
        return this.a;
    }

    public int getWidthInPixels(@NonNull Context context) {
        int i = this.a;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            zzbb.zzb();
            return com.google.android.gms.ads.internal.util.client.zzf.zzy(context, i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<zzr> creator = zzr.CREATOR;
        return displayMetrics.widthPixels;
    }

    public final boolean h() {
        return this.e;
    }

    public int hashCode() {
        return this.c.hashCode();
    }

    public final boolean i() {
        return this.g;
    }

    public boolean isAutoHeight() {
        return this.b == -2;
    }

    public boolean isFluid() {
        return this.a == -3 && this.b == -4;
    }

    public boolean isFullWidth() {
        return this.a == -1;
    }

    @NonNull
    public String toString() {
        return this.c;
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
        this.a = i;
        this.b = i2;
        this.c = str;
    }
}
