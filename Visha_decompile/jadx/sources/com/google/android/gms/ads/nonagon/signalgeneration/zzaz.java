package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbbn$zza$zza;
import com.google.android.gms.internal.ads.zzbym;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public final class zzaz {
    public final String a;
    public final String b;
    public final zzbym c;

    public zzaz(zzax zzaxVar, zzay zzayVar) {
        this.a = zzaxVar.a;
        this.b = zzaxVar.b;
        this.c = zzaxVar.c;
    }

    public final zzbym a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    public final zzbbn$zza$zza zza() {
        byte b;
        switch (this.a) {
            case "NATIVE":
                b = 2;
                break;
            case "INTERSTITIAL":
                b = 1;
                break;
            case "REWARDED":
                b = 3;
                break;
            case "BANNER":
                b = 0;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return zzbbn$zza$zza.BANNER;
        }
        if (b == 1) {
            return zzbbn$zza$zza.INTERSTITIAL;
        }
        if (b != 2) {
            return b != 3 ? zzbbn$zza$zza.AD_INITIATER_UNSPECIFIED : zzbbn$zza$zza.REWARD_BASED_VIDEO_AD;
        }
        return zzbbn$zza$zza.AD_LOADER;
    }

    public final String zzc() {
        return this.a.toLowerCase(Locale.ROOT);
    }

    public final Set zze() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.a.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
