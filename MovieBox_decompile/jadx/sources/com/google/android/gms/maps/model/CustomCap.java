package com.google.android.gms.maps.model;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

public final class CustomCap extends Cap {
    public final BitmapDescriptor bitmapDescriptor;
    public final float refWidth;

    /* JADX WARN: Illegal instructions before constructor call */
    public CustomCap(@NonNull BitmapDescriptor bitmapDescriptor, float f10) {
        BitmapDescriptor bitmapDescriptor2 = (BitmapDescriptor) Preconditions.checkNotNull(bitmapDescriptor, "bitmapDescriptor must not be null");
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("refWidth must be positive");
        }
        super(bitmapDescriptor2, f10);
        this.bitmapDescriptor = bitmapDescriptor;
        this.refWidth = f10;
    }

    @Override
    public final String toString() {
        String strValueOf = String.valueOf(this.bitmapDescriptor);
        float f10 = this.refWidth;
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 55);
        sb2.append("[CustomCap: bitmapDescriptor=");
        sb2.append(strValueOf);
        sb2.append(" refWidth=");
        sb2.append(f10);
        sb2.append("]");
        return sb2.toString();
    }

    public CustomCap(@NonNull BitmapDescriptor bitmapDescriptor) {
        this(bitmapDescriptor, 10.0f);
    }
}
