package com.google.android.gms.internal.measurement;

public enum zzne {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzjd.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzne(Object obj) {
        this.zzk = obj;
    }
}
