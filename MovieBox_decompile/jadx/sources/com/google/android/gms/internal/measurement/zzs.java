package com.google.android.gms.internal.measurement;

public enum zzs {
    DEBUG(3),
    ERROR(6),
    INFO(4),
    VERBOSE(2),
    WARN(5);

    zzs(int i10) {
    }

    public static zzs zza(int i10) {
        if (i10 == 2) {
            return VERBOSE;
        }
        if (i10 == 3) {
            return DEBUG;
        }
        if (i10 != 5) {
            return i10 != 6 ? INFO : ERROR;
        }
        return WARN;
    }
}
