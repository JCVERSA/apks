package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

public final class zzgo extends zzjd {
    private char zza;
    private long zzb;
    private String zzc;
    private final zzgq zzd;
    private final zzgq zze;
    private final zzgq zzf;
    private final zzgq zzg;
    private final zzgq zzh;
    private final zzgq zzi;
    private final zzgq zzj;
    private final zzgq zzk;
    private final zzgq zzl;

    zzgo(zzhy zzhyVar) {
        super(zzhyVar);
        this.zza = (char) 0;
        this.zzb = -1L;
        this.zzd = new zzgq(this, 6, false, false);
        this.zze = new zzgq(this, 6, true, false);
        this.zzf = new zzgq(this, 6, false, true);
        this.zzg = new zzgq(this, 5, false, false);
        this.zzh = new zzgq(this, 5, true, false);
        this.zzi = new zzgq(this, 5, false, true);
        this.zzj = new zzgq(this, 4, false, false);
        this.zzk = new zzgq(this, 3, false, false);
        this.zzl = new zzgq(this, 2, false, false);
    }

    private final String zzy() {
        String str;
        synchronized (this) {
            try {
                if (this.zzc == null) {
                    this.zzc = this.zzu.zzw() != null ? this.zzu.zzw() : "FA";
                }
                Preconditions.checkNotNull(this.zzc);
                str = this.zzc;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public final zzgq zzc() {
        return this.zzk;
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

    public final zzgq zzg() {
        return this.zzd;
    }

    @Override
    protected final boolean zzh() {
        return false;
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

    public final zzgq zzm() {
        return this.zzf;
    }

    public final zzgq zzn() {
        return this.zze;
    }

    public final zzgq zzo() {
        return this.zzj;
    }

    public final zzgq zzp() {
        return this.zzl;
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

    public final zzgq zzu() {
        return this.zzg;
    }

    public final zzgq zzv() {
        return this.zzi;
    }

    public final zzgq zzw() {
        return this.zzh;
    }

    public final String zzx() {
        Pair<String, Long> pairZza;
        if (zzk().zzb == null || (pairZza = zzk().zzb.zza()) == null || pairZza == zzha.zza) {
            return null;
        }
        return String.valueOf(pairZza.second) + ":" + ((String) pairZza.first);
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    private static String zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            return (com.google.android.gms.internal.measurement.zzok.zza() && zzbh.zzcg.zza(null).booleanValue()) ? "" : str;
        }
        return str.substring(0, iLastIndexOf);
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    protected static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new zzgp(str);
    }

    static String zza(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strZza = zza(z10, obj);
        String strZza2 = zza(z10, obj2);
        String strZza3 = zza(z10, obj3);
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strZza)) {
            sb2.append(str2);
            sb2.append(strZza);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strZza2)) {
            str3 = str2;
        } else {
            sb2.append(str2);
            sb2.append(strZza2);
        }
        if (!TextUtils.isEmpty(strZza3)) {
            sb2.append(str3);
            sb2.append(strZza3);
        }
        return sb2.toString();
    }

    private static String zza(boolean z10, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z10) {
                return String.valueOf(obj);
            }
            Long l10 = (Long) obj;
            if (Math.abs(l10.longValue()) >= 100) {
                String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
                String strValueOf = String.valueOf(Math.abs(l10.longValue()));
                return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            }
            return String.valueOf(obj);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Throwable) {
            Throwable th2 = (Throwable) obj;
            StringBuilder sb2 = new StringBuilder(z10 ? th2.getClass().getName() : th2.toString());
            String strZzb = zzb(zzhy.class.getCanonicalName());
            for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzb(className).equals(strZzb)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
            return sb2.toString();
        }
        if (obj instanceof zzgp) {
            return ((zzgp) obj).zza;
        }
        return z10 ? "-" : String.valueOf(obj);
    }

    protected final void zza(int i10, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        if (!z10 && zza(i10)) {
            zza(i10, zza(false, str, obj, obj2, obj3));
        }
        if (z11 || i10 < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzhv zzhvVarZzo = this.zzu.zzo();
        if (zzhvVarZzo == null) {
            zza(6, "Scheduler not set. Not logging error/warn");
            return;
        }
        if (!zzhvVarZzo.zzaf()) {
            zza(6, "Scheduler not initialized. Not logging error/warn");
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 >= 9) {
            i10 = 8;
        }
        zzhvVarZzo.zzb(new zzgn(this, i10, str, obj, obj2, obj3));
    }

    protected final void zza(int i10, String str) {
        Log.println(i10, zzy(), str);
    }

    protected final boolean zza(int i10) {
        return Log.isLoggable(zzy(), i10);
    }
}
