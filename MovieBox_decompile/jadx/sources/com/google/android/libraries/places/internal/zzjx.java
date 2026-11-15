package com.google.android.libraries.places.internal;

final class zzjx extends zzka {
    private String zza;
    private int zzb;
    private byte zzc;
    private int zzd;

    zzjx() {
    }

    final zzka zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null packageName");
        }
        this.zza = str;
        return this;
    }

    @Override
    final zzka zzb(int i10) {
        this.zzb = i10;
        this.zzc = (byte) 1;
        return this;
    }

    @Override
    final zzkb zzc() {
        String str;
        int i10;
        if (this.zzc == 1 && (str = this.zza) != null && (i10 = this.zzd) != 0) {
            return new zzjz(str, this.zzb, i10, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" packageName");
        }
        if (this.zzc == 0) {
            sb2.append(" versionCode");
        }
        if (this.zzd == 0) {
            sb2.append(" requestSource");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override
    public final zzka zzd(int i10) {
        this.zzd = i10;
        return this;
    }
}
