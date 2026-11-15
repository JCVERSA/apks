package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.maps.model.LatLng;

public abstract class CircularBounds implements LocationBias, LocationRestriction, Parcelable {
    @RecentlyNonNull
    public static CircularBounds newInstance(@RecentlyNonNull LatLng latLng, double d10) {
        return new zzay(latLng, d10);
    }

    @RecentlyNonNull
    public abstract LatLng getCenter();

    public abstract double getRadius();
}
