package com.google.android.libraries.places.internal;

final class zznv extends zzni {
    private final zznx zza;

    zznv(zznx zznxVar, int i10) {
        super(zznxVar.size(), i10);
        this.zza = zznxVar;
    }

    @Override
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }
}
