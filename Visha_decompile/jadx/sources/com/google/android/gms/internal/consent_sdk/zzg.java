package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import defpackage.y34;

public final class zzg extends Exception {
    private final int zza;

    public zzg(int i, String str) {
        super(str);
        this.zza = i;
    }

    @Override
    public final String getMessage() {
        return super.getMessage();
    }

    public final y34 zza() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", super.getMessage());
        } else {
            Log.w("UserMessagingPlatform", super.getMessage(), getCause());
        }
        return new y34(this.zza, super.getMessage());
    }

    public zzg(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }
}
