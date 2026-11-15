package com.google.android.gms.internal.auth;

import defpackage.w3i;

public final class zzgx extends RuntimeException {
    public zzgx(w3i w3iVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzfa zza() {
        return new zzfa(getMessage());
    }
}
