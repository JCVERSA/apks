package com.google.android.libraries.places.internal;

import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class zzazn implements Comparable {
    private static final zzazl zza = new zzazl(null);
    private static final long zzb;
    private static final long zzc;
    private static final long zzd;
    private final zzazm zze;
    private final long zzf;
    private volatile boolean zzg;

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        zzb = nanos;
        zzc = -nanos;
        zzd = TimeUnit.SECONDS.toNanos(1L);
    }

    private zzazn(zzazm zzazmVar, long j10, long j11, boolean z10) {
        this.zze = zzazmVar;
        long jMin = Math.min(zzb, Math.max(zzc, j11));
        this.zzf = j10 + jMin;
        this.zzg = jMin <= 0;
    }

    public static zzazm zzc() {
        return zza;
    }

    public static zzazn zzd(long j10, TimeUnit timeUnit) {
        zzazl zzazlVar = zza;
        if (timeUnit == null) {
            throw new NullPointerException("units");
        }
        return new zzazn(zzazlVar, System.nanoTime(), timeUnit.toNanos(j10), true);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzazn)) {
            return false;
        }
        zzazn zzaznVar = (zzazn) obj;
        return this.zze == zzaznVar.zze && this.zzf == zzaznVar.zzf;
    }

    public final int hashCode() {
        return Arrays.asList(this.zze, Long.valueOf(this.zzf)).hashCode();
    }

    public final String toString() {
        long jZzb = zzb(TimeUnit.NANOSECONDS);
        long jAbs = Math.abs(jZzb);
        long j10 = zzd;
        long j11 = jAbs / j10;
        long jAbs2 = Math.abs(jZzb) % j10;
        StringBuilder sb2 = new StringBuilder();
        if (jZzb < 0) {
            sb2.append('-');
        }
        sb2.append(j11);
        if (jAbs2 > 0) {
            sb2.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
        }
        sb2.append("s from now");
        zzazm zzazmVar = this.zze;
        if (zzazmVar != zza) {
            sb2.append(" (ticker=" + zzazmVar.toString() + ")");
        }
        return sb2.toString();
    }

    @Override
    public final int compareTo(zzazn zzaznVar) {
        zzazm zzazmVar = this.zze;
        if (zzazmVar == zzaznVar.zze) {
            long j10 = this.zzf - zzaznVar.zzf;
            if (j10 < 0) {
                return -1;
            }
            return j10 > 0 ? 1 : 0;
        }
        throw new AssertionError("Tickers (" + zzazmVar.toString() + " and " + zzaznVar.zze.toString() + ") don't match. Custom Ticker should only be used in tests!");
    }

    public final long zzb(TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        if (!this.zzg && this.zzf - jNanoTime <= 0) {
            this.zzg = true;
        }
        return timeUnit.convert(this.zzf - jNanoTime, TimeUnit.NANOSECONDS);
    }

    public final boolean zze() {
        if (!this.zzg) {
            if (this.zzf - System.nanoTime() > 0) {
                return false;
            }
            this.zzg = true;
        }
        return true;
    }
}
