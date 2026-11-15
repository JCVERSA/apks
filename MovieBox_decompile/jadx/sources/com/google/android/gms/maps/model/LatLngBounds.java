package com.google.android.gms.maps.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.GoogleMapOptions;

@SafeParcelable.Class(creator = "LatLngBoundsCreator")
@SafeParcelable.Reserved({1})
public final class LatLngBounds extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new zze();

    @SafeParcelable.Field(id = 3)
    public final LatLng northeast;

    @SafeParcelable.Field(id = 2)
    public final LatLng southwest;

    public static final class Builder {
        private double zzdh = Double.POSITIVE_INFINITY;
        private double zzdi = Double.NEGATIVE_INFINITY;
        private double zzdj = Double.NaN;
        private double zzdk = Double.NaN;

        public final LatLngBounds build() {
            Preconditions.checkState(!Double.isNaN(this.zzdj), "no included points");
            return new LatLngBounds(new LatLng(this.zzdh, this.zzdj), new LatLng(this.zzdi, this.zzdk));
        }

        public final Builder include(LatLng latLng) {
            this.zzdh = Math.min(this.zzdh, latLng.latitude);
            this.zzdi = Math.max(this.zzdi, latLng.latitude);
            double d10 = latLng.longitude;
            if (!Double.isNaN(this.zzdj)) {
                double d11 = this.zzdj;
                double d12 = this.zzdk;
                if (d11 > d12 ? !(d11 <= d10 || d10 <= d12) : !(d11 <= d10 && d10 <= d12)) {
                    if (LatLngBounds.zza(d11, d10) < LatLngBounds.zzb(this.zzdk, d10)) {
                        this.zzdj = d10;
                    }
                }
                return this;
            }
            this.zzdj = d10;
            this.zzdk = d10;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public LatLngBounds(@SafeParcelable.Param(id = 2) LatLng latLng, @SafeParcelable.Param(id = 3) LatLng latLng2) {
        Preconditions.checkNotNull(latLng, "null southwest");
        Preconditions.checkNotNull(latLng2, "null northeast");
        double d10 = latLng2.latitude;
        double d11 = latLng.latitude;
        Preconditions.checkArgument(d10 >= d11, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(d11), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        return GoogleMapOptions.zza(context, attributeSet);
    }

    public static double zza(double d10, double d11) {
        return ((d10 - d11) + 360.0d) % 360.0d;
    }

    public static double zzb(double d10, double d11) {
        return ((d11 - d10) + 360.0d) % 360.0d;
    }

    public final boolean contains(LatLng latLng) {
        double d10 = latLng.latitude;
        return this.southwest.latitude <= d10 && d10 <= this.northeast.latitude && zza(latLng.longitude);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public final LatLng getCenter() {
        LatLng latLng = this.southwest;
        double d10 = latLng.latitude;
        LatLng latLng2 = this.northeast;
        double d11 = (d10 + latLng2.latitude) / 2.0d;
        double d12 = latLng2.longitude;
        double d13 = latLng.longitude;
        if (d13 > d12) {
            d12 += 360.0d;
        }
        return new LatLng(d11, (d12 + d13) / 2.0d);
    }

    public final int hashCode() {
        return Objects.hashCode(this.southwest, this.northeast);
    }

    public final LatLngBounds including(LatLng latLng) {
        double dMin = Math.min(this.southwest.latitude, latLng.latitude);
        double dMax = Math.max(this.northeast.latitude, latLng.latitude);
        double d10 = this.northeast.longitude;
        double d11 = this.southwest.longitude;
        double d12 = latLng.longitude;
        if (!zza(d12)) {
            if (zza(d11, d12) < zzb(d10, d12)) {
                d11 = d12;
            } else {
                d10 = d12;
            }
        }
        return new LatLngBounds(new LatLng(dMin, d11), new LatLng(dMax, d10));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("southwest", this.southwest).add("northeast", this.northeast).toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.southwest, i10, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.northeast, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    private final boolean zza(double d10) {
        double d11 = this.southwest.longitude;
        double d12 = this.northeast.longitude;
        if (d11 <= d12) {
            return d11 <= d10 && d10 <= d12;
        }
        return d11 <= d10 || d10 <= d12;
    }
}
