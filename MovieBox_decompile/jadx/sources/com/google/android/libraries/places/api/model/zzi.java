package com.google.android.libraries.places.api.model;

final class zzi extends zzbx {
    private int zza;
    private int zzb;
    private byte zzc;

    zzi() {
    }

    @Override
    public final zzbx zza(int i10) {
        this.zzb = i10;
        this.zzc = (byte) (this.zzc | 2);
        return this;
    }

    @Override
    public final zzbx zzb(int i10) {
        this.zza = i10;
        this.zzc = (byte) (this.zzc | 1);
        return this;
    }

    @Override
    public final zzby zzc() {
        if (this.zzc == 3) {
            return new zzau(this.zza, this.zzb);
        }
        StringBuilder sb2 = new StringBuilder();
        if ((this.zzc & 1) == 0) {
            sb2.append(" offset");
        }
        if ((this.zzc & 2) == 0) {
            sb2.append(" length");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
