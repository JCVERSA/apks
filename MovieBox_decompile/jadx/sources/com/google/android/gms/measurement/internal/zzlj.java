package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

public final class zzlj extends zzh {
    protected zzlk zza;
    private volatile zzlk zzb;
    private volatile zzlk zzc;
    private final Map<Integer, zzlk> zzd;
    private Activity zze;
    private volatile boolean zzf;
    private volatile zzlk zzg;
    private zzlk zzh;
    private boolean zzi;
    private final Object zzj;

    public zzlj(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    public final zzlk zzaa() {
        return this.zzb;
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    @Override
    public final zzb zzc() {
        return super.zzc();
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
    public final zzgg zzg() {
        return super.zzg();
    }

    @Override
    public final zzgf zzh() {
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
    public final zzjq zzm() {
        return super.zzm();
    }

    @Override
    public final zzlj zzn() {
        return super.zzn();
    }

    @Override
    public final zzls zzo() {
        return super.zzo();
    }

    @Override
    public final zznb zzp() {
        return super.zzp();
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

    @Override
    protected final boolean zzz() {
        return false;
    }

    private final zzlk zzd(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zzlk zzlkVar = this.zzd.get(Integer.valueOf(activity.hashCode()));
        if (zzlkVar == null) {
            zzlk zzlkVar2 = new zzlk(null, zza(activity.getClass(), "Activity"), zzq().zzn());
            this.zzd.put(Integer.valueOf(activity.hashCode()), zzlkVar2);
            zzlkVar = zzlkVar2;
        }
        return this.zzg != null ? this.zzg : zzlkVar;
    }

    public final void zzb(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        long jElapsedRealtime = zzb().elapsedRealtime();
        if (!zze().zzw()) {
            this.zzb = null;
            zzl().zzb(new zzln(this, jElapsedRealtime));
        } else {
            zzlk zzlkVarZzd = zzd(activity);
            this.zzc = this.zzb;
            this.zzb = null;
            zzl().zzb(new zzlq(this, zzlkVarZzd, jElapsedRealtime));
        }
    }

    public final void zzc(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = true;
            if (activity != this.zze) {
                synchronized (this.zzj) {
                    this.zze = activity;
                    this.zzf = false;
                }
                if (zze().zzw()) {
                    this.zzg = null;
                    zzl().zzb(new zzlp(this));
                }
            }
        }
        if (!zze().zzw()) {
            this.zzb = this.zzg;
            zzl().zzb(new zzlo(this));
        } else {
            zza(activity, zzd(activity), false);
            zzb zzbVarZzc = zzc();
            zzbVarZzc.zzl().zzb(new zzc(zzbVarZzc, zzbVarZzc.zzb().elapsedRealtime()));
        }
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    public final zzlk zza(boolean z10) {
        zzu();
        zzt();
        if (!z10) {
            return this.zza;
        }
        zzlk zzlkVar = this.zza;
        return zzlkVar != null ? zzlkVar : this.zzh;
    }

    private final String zza(Class<?> cls, String str) {
        String str2;
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return str;
        }
        String[] strArrSplit = canonicalName.split("\\.");
        if (strArrSplit.length > 0) {
            str2 = strArrSplit[strArrSplit.length - 1];
        } else {
            str2 = "";
        }
        return str2.length() > zze().zza((String) null, false) ? str2.substring(0, zze().zza((String) null, false)) : str2;
    }

    static void zza(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j10) {
        if (bundle != null) {
            bundle.remove("screen_name");
            bundle.remove("screen_class");
        }
        zzljVar.zza(zzlkVar, zzlkVar2, j10, true, zzljVar.zzq().zza((String) null, "screen_view", bundle, (List<String>) null, false));
    }

    public final void zzb(Activity activity, Bundle bundle) {
        zzlk zzlkVar;
        if (!zze().zzw() || bundle == null || (zzlkVar = this.zzd.get(Integer.valueOf(activity.hashCode()))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzlkVar.zzc);
        bundle2.putString("name", zzlkVar.zza);
        bundle2.putString("referrer_name", zzlkVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    private final void zza(Activity activity, zzlk zzlkVar, boolean z10) {
        zzlk zzlkVar2;
        zzlk zzlkVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zzlkVar.zzb == null) {
            zzlkVar2 = new zzlk(zzlkVar.zza, activity != null ? zza(activity.getClass(), "Activity") : null, zzlkVar.zzc, zzlkVar.zze, zzlkVar.zzf);
        } else {
            zzlkVar2 = zzlkVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzlkVar2;
        zzl().zzb(new zzll(this, zzlkVar2, zzlkVar3, zzb().elapsedRealtime(), z10));
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    public final void zza(zzlk zzlkVar, zzlk zzlkVar2, long j10, boolean z10, Bundle bundle) {
        String str;
        long j11;
        zzt();
        boolean z11 = false;
        boolean z12 = (zzlkVar2 != null && zzlkVar2.zzc == zzlkVar.zzc && Objects.equals(zzlkVar2.zzb, zzlkVar.zzb) && Objects.equals(zzlkVar2.zza, zzlkVar.zza)) ? false : true;
        if (z10 && this.zza != null) {
            z11 = true;
        }
        if (z12) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzos.zza(zzlkVar, bundle2, true);
            if (zzlkVar2 != null) {
                String str2 = zzlkVar2.zza;
                if (str2 != null) {
                    bundle2.putString("_pn", str2);
                }
                String str3 = zzlkVar2.zzb;
                if (str3 != null) {
                    bundle2.putString("_pc", str3);
                }
                bundle2.putLong("_pi", zzlkVar2.zzc);
            }
            if (z11) {
                long jZza = zzp().zzb.zza(j10);
                if (jZza > 0) {
                    zzq().zza(bundle2, jZza);
                }
            }
            if (!zze().zzw()) {
                bundle2.putLong("_mst", 1L);
            }
            if (zzlkVar.zze) {
                str = "app";
            } else {
                str = "auto";
            }
            String str4 = str;
            long jCurrentTimeMillis = zzb().currentTimeMillis();
            if (zzlkVar.zze) {
                long j12 = zzlkVar.zzf;
                if (j12 != 0) {
                    j11 = j12;
                } else {
                    j11 = jCurrentTimeMillis;
                }
            } else {
                j11 = jCurrentTimeMillis;
            }
            zzm().zza(str4, "_vs", j11, bundle2);
        }
        if (z11) {
            zza(this.zza, true, j10);
        }
        this.zza = zzlkVar;
        if (zzlkVar.zze) {
            this.zzh = zzlkVar;
        }
        zzo().zza(zzlkVar);
    }

    public final void zza(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!zze().zzw() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(Integer.valueOf(activity.hashCode()), new zzlk(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zza(Activity activity) {
        synchronized (this.zzj) {
            try {
                if (activity == this.zze) {
                    this.zze = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (zze().zzw()) {
            this.zzd.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    public final void zza(zzlk zzlkVar, boolean z10, long j10) {
        zzc().zza(zzb().elapsedRealtime());
        if (!zzp().zza(zzlkVar != null && zzlkVar.zzd, z10, j10) || zzlkVar == null) {
            return;
        }
        zzlkVar.zzd = false;
    }

    @Deprecated
    public final void zza(@NonNull Activity activity, String str, String str2) {
        if (!zze().zzw()) {
            zzj().zzv().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzlk zzlkVar = this.zzb;
        if (zzlkVar == null) {
            zzj().zzv().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.zzd.get(Integer.valueOf(activity.hashCode())) == null) {
            zzj().zzv().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zza(activity.getClass(), "Activity");
        }
        boolean zEquals = Objects.equals(zzlkVar.zzb, str2);
        boolean zEquals2 = Objects.equals(zzlkVar.zza, str);
        if (zEquals && zEquals2) {
            zzj().zzv().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > zze().zza((String) null, false))) {
            zzj().zzv().zza("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > zze().zza((String) null, false))) {
            zzj().zzv().zza("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzj().zzp().zza("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzlk zzlkVar2 = new zzlk(str, str2, zzq().zzn());
        this.zzd.put(Integer.valueOf(activity.hashCode()), zzlkVar2);
        zza(activity, zzlkVar2, true);
    }

    public final void zza(Bundle bundle, long j10) {
        String str;
        synchronized (this.zzj) {
            try {
                if (!this.zzi) {
                    zzj().zzv().zza("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String strZza = null;
                if (bundle != null) {
                    String string = bundle.getString("screen_name");
                    if (string != null && (string.length() <= 0 || string.length() > zze().zza((String) null, false))) {
                        zzj().zzv().zza("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                        return;
                    }
                    String string2 = bundle.getString("screen_class");
                    if (string2 != null && (string2.length() <= 0 || string2.length() > zze().zza((String) null, false))) {
                        zzj().zzv().zza("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                        return;
                    } else {
                        str = string;
                        strZza = string2;
                    }
                } else {
                    str = null;
                }
                if (strZza == null) {
                    Activity activity = this.zze;
                    if (activity != null) {
                        strZza = zza(activity.getClass(), "Activity");
                    } else {
                        strZza = "Activity";
                    }
                }
                String str2 = strZza;
                zzlk zzlkVar = this.zzb;
                if (this.zzf && zzlkVar != null) {
                    this.zzf = false;
                    boolean zEquals = Objects.equals(zzlkVar.zzb, str2);
                    boolean zEquals2 = Objects.equals(zzlkVar.zza, str);
                    if (zEquals && zEquals2) {
                        zzj().zzv().zza("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                zzj().zzp().zza("Logging screen view with name, class", str == null ? "null" : str, str2 == null ? "null" : str2);
                zzlk zzlkVar2 = this.zzb == null ? this.zzc : this.zzb;
                zzlk zzlkVar3 = new zzlk(str, str2, zzq().zzn(), true, j10);
                this.zzb = zzlkVar3;
                this.zzc = zzlkVar2;
                this.zzg = zzlkVar3;
                zzl().zzb(new zzlm(this, bundle, zzlkVar3, zzlkVar2, zzb().elapsedRealtime()));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
