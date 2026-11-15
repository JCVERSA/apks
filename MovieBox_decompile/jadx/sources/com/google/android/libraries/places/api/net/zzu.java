package com.google.android.libraries.places.api.net;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.Place;

final class zzu extends IsOpenRequest.Builder {
    private Place zza;
    private String zzb;
    private long zzc;
    private CancellationToken zzd;
    private byte zze;

    zzu() {
    }

    @Override
    @Nullable
    public final CancellationToken getCancellationToken() {
        return this.zzd;
    }

    @Override
    @Nullable
    public final Place getPlace() {
        return this.zza;
    }

    @Override
    @Nullable
    public final String getPlaceId() {
        return this.zzb;
    }

    @Override
    public final long getUtcTimeMillis() {
        if (this.zze != 0) {
            return this.zzc;
        }
        throw new IllegalStateException("Property \"utcTimeMillis\" has not been set");
    }

    @Override
    public final IsOpenRequest.Builder setCancellationToken(@Nullable CancellationToken cancellationToken) {
        this.zzd = cancellationToken;
        return this;
    }

    @Override
    public final IsOpenRequest.Builder setPlace(Place place) {
        this.zza = place;
        return this;
    }

    @Override
    public final IsOpenRequest.Builder setPlaceId(String str) {
        this.zzb = str;
        return this;
    }

    @Override
    public final IsOpenRequest.Builder setUtcTimeMillis(long j10) {
        this.zzc = j10;
        this.zze = (byte) 1;
        return this;
    }

    @Override
    final IsOpenRequest zza() {
        if (this.zze == 1) {
            return new zzw(this.zza, this.zzb, this.zzc, this.zzd, null);
        }
        throw new IllegalStateException("Missing required properties: utcTimeMillis");
    }
}
