package com.google.android.gms.internal.ads;

import defpackage.j2i;
import defpackage.k2i;
import defpackage.n2i;
import java.io.Serializable;
import java.util.regex.Pattern;

final class zzftn extends k2i implements Serializable {
    private final Pattern zza;

    public zzftn(Pattern pattern) {
        pattern.getClass();
        this.zza = pattern;
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override
    public final j2i zza(CharSequence charSequence) {
        return new n2i(this.zza.matcher(charSequence));
    }
}
