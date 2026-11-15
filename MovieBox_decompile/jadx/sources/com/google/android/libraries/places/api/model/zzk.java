package com.google.android.libraries.places.api.model;

import android.os.ParcelUuid;

abstract class zzk extends AutocompleteSessionToken {
    private final ParcelUuid zza;

    zzk(ParcelUuid parcelUuid) {
        if (parcelUuid == null) {
            throw new NullPointerException("Null UUID");
        }
        this.zza = parcelUuid;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutocompleteSessionToken) {
            return this.zza.equals(((AutocompleteSessionToken) obj).zza());
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() ^ 1000003;
    }

    @Override
    final ParcelUuid zza() {
        return this.zza;
    }
}
