package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.params.TmcStartParams;
import java.util.concurrent.TimeUnit;

final class zzbjc implements zzbbx {
    zzbjc() {
    }

    @Override
    public final Object zza(String str) {
        zzmt.zzf(str.length() > 0, "empty timeout");
        zzmt.zzf(str.length() <= 9, "bad timeout format");
        long j10 = Long.parseLong(str.substring(0, str.length() - 1));
        char cCharAt = str.charAt(str.length() - 1);
        if (cCharAt == 'H') {
            return Long.valueOf(TimeUnit.HOURS.toNanos(j10));
        }
        if (cCharAt == 'M') {
            return Long.valueOf(TimeUnit.MINUTES.toNanos(j10));
        }
        if (cCharAt == 'S') {
            return Long.valueOf(TimeUnit.SECONDS.toNanos(j10));
        }
        if (cCharAt == 'u') {
            return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j10));
        }
        if (cCharAt == 'm') {
            return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j10));
        }
        if (cCharAt == 'n') {
            return Long.valueOf(j10);
        }
        throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(cCharAt)));
    }

    @Override
    public final String zzb(Object obj) {
        Long l10 = (Long) obj;
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (l10.longValue() < 0) {
            throw new IllegalArgumentException("Timeout too small");
        }
        if (l10.longValue() < 100000000) {
            return String.valueOf(l10).concat("n");
        }
        if (l10.longValue() < 100000000000L) {
            return timeUnit.toMicros(l10.longValue()) + TmcStartParams.KEY_URL_SHORT;
        }
        if (l10.longValue() < 100000000000000L) {
            return timeUnit.toMillis(l10.longValue()) + "m";
        }
        if (l10.longValue() < 100000000000000000L) {
            return timeUnit.toSeconds(l10.longValue()) + "S";
        }
        if (l10.longValue() < 6000000000000000000L) {
            return timeUnit.toMinutes(l10.longValue()) + "M";
        }
        return timeUnit.toHours(l10.longValue()) + "H";
    }
}
