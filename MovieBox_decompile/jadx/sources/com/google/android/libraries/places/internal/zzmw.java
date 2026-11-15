package com.google.android.libraries.places.internal;

import java.util.Iterator;

final class zzmw implements Iterable {
    final CharSequence zza;
    final zzmy zzb;

    zzmw(zzmy zzmyVar, CharSequence charSequence) {
        this.zza = charSequence;
        this.zzb = zzmyVar;
    }

    @Override
    public final Iterator iterator() {
        return this.zzb.zzg(this.zza);
    }

    public final String toString() {
        zzmh zzmhVarZzc = zzmh.zzc(", ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        zzmhVarZzc.zzg(sb2, iterator());
        sb2.append(']');
        return sb2.toString();
    }
}
