package com.google.android.libraries.places.internal;

final class zzmu extends zzmx {
    final zzmv zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzmu(zzmv zzmvVar, zzmy zzmyVar, CharSequence charSequence) {
        super(zzmyVar, charSequence);
        this.zza = zzmvVar;
    }

    @Override
    final int zzc(int i10) {
        return i10 + 1;
    }

    @Override
    final int zzd(int i10) {
        CharSequence charSequence = ((zzmx) this).zzb;
        int length = charSequence.length();
        zzmt.zzb(i10, length, "index");
        while (i10 < length) {
            zzmv zzmvVar = this.zza;
            if (zzmvVar.zza.zza(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
