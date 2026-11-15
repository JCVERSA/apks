package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import defpackage.erj;

public final class zzqb extends Exception {
    public final int zza;
    public final boolean zzb;

    public zzqb(int i, int i2, int i3, int i4, erj erjVar, boolean z, @Nullable Exception exc) {
        String strValueOf = String.valueOf(erjVar);
        StringBuilder sb = new StringBuilder();
        sb.append("AudioTrack init failed ");
        sb.append(i);
        sb.append(" Config(");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(") ");
        sb.append(strValueOf);
        sb.append(true != z ? "" : " (recoverable)");
        super(sb.toString(), exc);
        this.zza = i;
        this.zzb = z;
    }
}
