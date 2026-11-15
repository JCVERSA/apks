package com.google.android.gms.internal.play_billing;

import defpackage.g0j;

public final class zzip extends RuntimeException {
    public zzip(g0j g0jVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzhb zza() {
        return new zzhb(getMessage());
    }
}
