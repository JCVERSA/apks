package com.google.android.libraries.places.api.net;

import com.google.android.libraries.places.api.model.Place;

final class zzh extends FetchPlaceResponse {
    private final Place zza;

    zzh(Place place) {
        if (place == null) {
            throw new NullPointerException("Null place");
        }
        this.zza = place;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FetchPlaceResponse) {
            return this.zza.equals(((FetchPlaceResponse) obj).getPlace());
        }
        return false;
    }

    @Override
    public final Place getPlace() {
        return this.zza;
    }

    public final int hashCode() {
        return this.zza.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "FetchPlaceResponse{place=" + this.zza.toString() + "}";
    }
}
