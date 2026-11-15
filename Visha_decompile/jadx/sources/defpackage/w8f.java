package defpackage;

import android.location.Location;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.internal.client.zzet;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.internal.ads.zzbfi;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.BooleanUtils;

public final class w8f implements NativeMediationAdRequest {
    public final Date a;
    public final int b;
    public final Set c;
    public final boolean d;
    public final Location e;
    public final int f;
    public final zzbfi g;
    public final boolean i;
    public final List h = new ArrayList();
    public final Map j = new HashMap();

    public w8f(Date date, int i, Set set, Location location, boolean z, int i2, zzbfi zzbfiVar, List list, boolean z2, int i3, String str) {
        this.a = date;
        this.b = i;
        this.c = set;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = zzbfiVar;
        this.i = z2;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.startsWith("custom:")) {
                    String[] strArrSplit = str2.split(StringUtils.PROCESS_POSTFIX_DELIMITER, 3);
                    if (strArrSplit.length == 3) {
                        if (BooleanUtils.TRUE.equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], Boolean.TRUE);
                        } else if (BooleanUtils.FALSE.equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.h.add(str2);
                }
            }
        }
    }

    @Override
    public final float getAdVolume() {
        return zzet.zzf().zza();
    }

    @Override
    public final Date getBirthday() {
        return this.a;
    }

    @Override
    public final int getGender() {
        return this.b;
    }

    @Override
    public final Set getKeywords() {
        return this.c;
    }

    @Override
    public final Location getLocation() {
        return this.e;
    }

    @Override
    public final NativeAdOptions getNativeAdOptions() {
        Parcelable.Creator<zzbfi> creator = zzbfi.CREATOR;
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        zzbfi zzbfiVar = this.g;
        if (zzbfiVar == null) {
            return builder.build();
        }
        int i = zzbfiVar.zza;
        if (i == 2) {
            builder.setAdChoicesPlacement(zzbfiVar.zze);
        } else {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzbfiVar.zzg);
                    builder.setMediaAspectRatio(zzbfiVar.zzh);
                }
            }
            zzfw zzfwVar = zzbfiVar.zzf;
            if (zzfwVar != null) {
                builder.setVideoOptions(new VideoOptions(zzfwVar));
            }
            builder.setAdChoicesPlacement(zzbfiVar.zze);
        }
        builder.setReturnUrlsForImageAssets(zzbfiVar.zzb);
        builder.setImageOrientation(zzbfiVar.zzc);
        builder.setRequestMultipleImages(zzbfiVar.zzd);
        return builder.build();
    }

    @Override
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzbfi.zza(this.g);
    }

    @Override
    public final boolean isAdMuted() {
        return zzet.zzf().zzy();
    }

    @Override
    public final boolean isDesignedForFamilies() {
        return this.i;
    }

    @Override
    public final boolean isTesting() {
        return this.d;
    }

    @Override
    public final boolean isUnifiedNativeAdRequested() {
        return this.h.contains("6");
    }

    @Override
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }

    @Override
    public final Map zza() {
        return this.j;
    }

    @Override
    public final boolean zzb() {
        return this.h.contains("3");
    }
}
