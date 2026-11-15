package com.google.android.libraries.places.api.model;

abstract class zzy extends PlaceLikelihood {
    private final Place zza;
    private final double zzb;

    zzy(Place place, double d10) {
        if (place == null) {
            throw new NullPointerException("Null place");
        }
        this.zza = place;
        this.zzb = d10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PlaceLikelihood) {
            PlaceLikelihood placeLikelihood = (PlaceLikelihood) obj;
            if (this.zza.equals(placeLikelihood.getPlace()) && Double.doubleToLongBits(this.zzb) == Double.doubleToLongBits(placeLikelihood.getLikelihood())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final double getLikelihood() {
        return this.zzb;
    }

    @Override
    public final Place getPlace() {
        return this.zza;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.zzb) >>> 32) ^ Double.doubleToLongBits(this.zzb)));
    }

    public final String toString() {
        return "PlaceLikelihood{place=" + this.zza.toString() + ", likelihood=" + this.zzb + "}";
    }
}
