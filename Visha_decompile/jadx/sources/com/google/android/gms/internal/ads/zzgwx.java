package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Locale;

public final class zzgwx extends IOException {
    public zzgwx() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    public zzgwx(long j, long j2, int i, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.format(Locale.US, "Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i))), th);
    }

    public zzgwx(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
