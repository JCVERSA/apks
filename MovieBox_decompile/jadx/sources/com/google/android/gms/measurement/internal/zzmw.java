package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

public final class zzmw extends zznr {
    public final zzhb zza;
    public final zzhb zzb;
    public final zzhb zzc;
    public final zzhb zzd;
    public final zzhb zze;
    public final zzhb zzf;
    private final Map<String, zzmv> zzh;

    zzmw(zznv zznvVar) {
        super(zznvVar);
        this.zzh = new HashMap();
        zzha zzhaVarZzk = zzk();
        Objects.requireNonNull(zzhaVarZzk);
        this.zza = new zzhb(zzhaVarZzk, "last_delete_stale", 0L);
        zzha zzhaVarZzk2 = zzk();
        Objects.requireNonNull(zzhaVarZzk2);
        this.zzb = new zzhb(zzhaVarZzk2, "last_delete_stale_batch", 0L);
        zzha zzhaVarZzk3 = zzk();
        Objects.requireNonNull(zzhaVarZzk3);
        this.zzc = new zzhb(zzhaVarZzk3, "backoff", 0L);
        zzha zzhaVarZzk4 = zzk();
        Objects.requireNonNull(zzhaVarZzk4);
        this.zzd = new zzhb(zzhaVarZzk4, "last_upload", 0L);
        zzha zzhaVarZzk5 = zzk();
        Objects.requireNonNull(zzhaVarZzk5);
        this.zze = new zzhb(zzhaVarZzk5, "last_upload_attempt", 0L);
        zzha zzhaVarZzk6 = zzk();
        Objects.requireNonNull(zzhaVarZzk6);
        this.zzf = new zzhb(zzhaVarZzk6, "midnight_offset", 0L);
    }

    @Override
    public final zzoo g_() {
        return super.g_();
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    @Override
    protected final boolean zzc() {
        return false;
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    @Override
    public final zzt zzg() {
        return super.zzg();
    }

    @Override
    public final zzal zzh() {
        return super.zzh();
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzhl zzm() {
        return super.zzm();
    }

    @Override
    public final zzmw zzn() {
        return super.zzn();
    }

    @Override
    public final zznu zzo() {
        return super.zzo();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        super.zzr();
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        super.zzt();
    }

    @Deprecated
    private final Pair<String, Boolean> zza(String str) {
        zzmv zzmvVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzt();
        long jElapsedRealtime = zzb().elapsedRealtime();
        zzmv zzmvVar2 = this.zzh.get(str);
        if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc) {
            return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzd = zze().zzd(str) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            } catch (PackageManager.NameNotFoundException unused) {
                if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc + zze().zzc(str, zzbh.zzb)) {
                    return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
                }
                advertisingIdInfo = null;
            }
            if (advertisingIdInfo == null) {
                return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String id2 = advertisingIdInfo.getId();
            zzmvVar = id2 != null ? new zzmv(id2, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd) : new zzmv("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd);
            this.zzh.put(str, zzmvVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(zzmvVar.zza, Boolean.valueOf(zzmvVar.zzb));
        } catch (Exception e10) {
            zzj().zzc().zza("Unable to get advertising id", e10);
            zzmvVar = new zzmv("", false, jZzd);
        }
    }

    final Pair<String, Boolean> zza(String str, zzje zzjeVar) {
        if (zzjeVar.zzg()) {
            return zza(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    final String zza(String str, boolean z10) {
        String str2;
        zzt();
        if (z10) {
            str2 = (String) zza(str).first;
        } else {
            str2 = "00000000-0000-0000-0000-000000000000";
        }
        MessageDigest messageDigestZzu = zzos.zzu();
        if (messageDigestZzu == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzu.digest(str2.getBytes())));
    }
}
