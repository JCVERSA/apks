package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a1f;
import defpackage.z09;

public final class zzbfi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfi> CREATOR = new a1f();
    public final int zza;
    public final boolean zzb;
    public final int zzc;
    public final boolean zzd;
    public final int zze;

    @Nullable
    public final zzfw zzf;
    public final boolean zzg;
    public final int zzh;
    public final int zzi;
    public final boolean zzj;
    public final int zzk;

    public zzbfi(int i, boolean z, int i2, boolean z2, int i3, zzfw zzfwVar, boolean z3, int i4, int i5, boolean z4, int i6) {
        this.zza = i;
        this.zzb = z;
        this.zzc = i2;
        this.zzd = z2;
        this.zze = i3;
        this.zzf = zzfwVar;
        this.zzg = z3;
        this.zzh = i4;
        this.zzj = z4;
        this.zzi = i5;
        this.zzk = i6;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @NonNull
    public static NativeAdOptions zza(@Nullable zzbfi zzbfiVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbfiVar == null) {
            return builder.build();
        }
        int i = zzbfiVar.zza;
        int i2 = 2;
        if (i == 2) {
            builder.setAdChoicesPlacement(zzbfiVar.zze);
        } else {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzbfiVar.zzg);
                    builder.setMediaAspectRatio(zzbfiVar.zzh);
                    builder.enableCustomClickGestureDirection(zzbfiVar.zzi, zzbfiVar.zzj);
                    int i3 = zzbfiVar.zzk;
                    if (i3 == 0) {
                        i2 = 1;
                    } else if (i3 == 2) {
                        i2 = 3;
                    } else if (i3 != 1) {
                        i2 = 1;
                    }
                    builder.zzi(i2);
                }
            }
            zzfw zzfwVar = zzbfiVar.zzf;
            if (zzfwVar != null) {
                builder.setVideoOptions(new VideoOptions(zzfwVar));
            }
            builder.setAdChoicesPlacement(zzbfiVar.zze);
        }
        builder.setReturnUrlsForImageAssets(zzbfiVar.zzb);
        builder.setRequestMultipleImages(zzbfiVar.zzd);
        return builder.build();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.g(parcel, 2, this.zzb);
        z09.s(parcel, 3, this.zzc);
        z09.g(parcel, 4, this.zzd);
        z09.s(parcel, 5, this.zze);
        z09.B(parcel, 6, this.zzf, i, false);
        z09.g(parcel, 7, this.zzg);
        z09.s(parcel, 8, this.zzh);
        z09.s(parcel, 9, this.zzi);
        z09.g(parcel, 10, this.zzj);
        z09.s(parcel, 11, this.zzk);
        z09.b(parcel, iA);
    }

    @Deprecated
    public zzbfi(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzfw(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio(), 0, false, 0);
    }
}
