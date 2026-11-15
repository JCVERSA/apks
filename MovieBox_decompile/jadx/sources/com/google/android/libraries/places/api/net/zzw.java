package com.google.android.libraries.places.api.net;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.libraries.places.api.model.Place;

final class zzw extends IsOpenRequest {

    @Nullable
    private final Place zza;

    @Nullable
    private final String zzb;
    private final long zzc;

    @Nullable
    private final CancellationToken zzd;

    zzw(Place place, String str, long j10, CancellationToken cancellationToken, zzv zzvVar) {
        this.zza = place;
        this.zzb = str;
        this.zzc = j10;
        this.zzd = cancellationToken;
    }

    public final boolean equals(Object obj) {
        CancellationToken cancellationToken;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IsOpenRequest) {
            IsOpenRequest isOpenRequest = (IsOpenRequest) obj;
            Place place = this.zza;
            if (place != null ? place.equals(isOpenRequest.getPlace()) : isOpenRequest.getPlace() == null) {
                String str = this.zzb;
                if (str != null ? str.equals(isOpenRequest.getPlaceId()) : isOpenRequest.getPlaceId() == null) {
                    if (this.zzc == isOpenRequest.getUtcTimeMillis() && ((cancellationToken = this.zzd) != null ? cancellationToken.equals(isOpenRequest.getCancellationToken()) : isOpenRequest.getCancellationToken() == null)) {
                        return true;
                    }
                }
            }
        }
        return false;
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
        return this.zzc;
    }

    public final int hashCode() {
        Place place = this.zza;
        int iHashCode = place == null ? 0 : place.hashCode();
        String str = this.zzb;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        int i10 = iHashCode ^ 1000003;
        long j10 = this.zzc;
        CancellationToken cancellationToken = this.zzd;
        return (((((i10 * 1000003) ^ iHashCode2) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ (cancellationToken != null ? cancellationToken.hashCode() : 0);
    }

    public final String toString() {
        CancellationToken cancellationToken = this.zzd;
        return "IsOpenRequest{place=" + String.valueOf(this.zza) + ", placeId=" + this.zzb + ", utcTimeMillis=" + this.zzc + ", cancellationToken=" + String.valueOf(cancellationToken) + "}";
    }
}
