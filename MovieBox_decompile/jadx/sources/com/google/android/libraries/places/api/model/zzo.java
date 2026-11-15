package com.google.android.libraries.places.api.model;

final class zzo extends zzcb {
    private int zza;
    private int zzb;
    private byte zzc;

    zzo() {
    }

    final zzcb zza(int i10) {
        this.zza = i10;
        this.zzc = (byte) (this.zzc | 1);
        return this;
    }

    @Override
    final zzcb zzb(int i10) {
        this.zzb = i10;
        this.zzc = (byte) (this.zzc | 2);
        return this;
    }

    @Override
    final LocalTime zzc() {
        if (this.zzc == 3) {
            return new zzbc(this.zza, this.zzb);
        }
        StringBuilder sb2 = new StringBuilder();
        if ((this.zzc & 1) == 0) {
            sb2.append(" hours");
        }
        if ((this.zzc & 2) == 0) {
            sb2.append(" minutes");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
