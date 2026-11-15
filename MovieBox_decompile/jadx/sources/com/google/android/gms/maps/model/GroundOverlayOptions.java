package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;

@SafeParcelable.Class(creator = "GroundOverlayOptionsCreator")
@SafeParcelable.Reserved({1})
public final class GroundOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new zzd();
    public static final float NO_DIMENSION = -1.0f;

    @SafeParcelable.Field(getter = "getBearing", id = 7)
    private float bearing;

    @SafeParcelable.Field(getter = "getHeight", id = 5)
    private float height;

    @SafeParcelable.Field(getter = "getWidth", id = 4)
    private float width;

    @SafeParcelable.Field(getter = "getZIndex", id = 8)
    private float zzcs;

    @SafeParcelable.Field(getter = "isVisible", id = 9)
    private boolean zzct;

    @SafeParcelable.Field(getter = "isClickable", id = 13)
    private boolean zzcu;

    @NonNull
    @SafeParcelable.Field(getter = "getWrappedImageDescriptorImplBinder", id = 2, type = "android.os.IBinder")
    private BitmapDescriptor zzcx;

    @SafeParcelable.Field(getter = "getLocation", id = 3)
    private LatLng zzcy;

    @SafeParcelable.Field(getter = "getBounds", id = 6)
    private LatLngBounds zzcz;

    @SafeParcelable.Field(getter = "getTransparency", id = 10)
    private float zzda;

    @SafeParcelable.Field(getter = "getAnchorU", id = 11)
    private float zzdb;

    @SafeParcelable.Field(getter = "getAnchorV", id = 12)
    private float zzdc;

    @SafeParcelable.Constructor
    GroundOverlayOptions(@SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) LatLng latLng, @SafeParcelable.Param(id = 4) float f10, @SafeParcelable.Param(id = 5) float f11, @SafeParcelable.Param(id = 6) LatLngBounds latLngBounds, @SafeParcelable.Param(id = 7) float f12, @SafeParcelable.Param(id = 8) float f13, @SafeParcelable.Param(id = 9) boolean z10, @SafeParcelable.Param(id = 10) float f14, @SafeParcelable.Param(id = 11) float f15, @SafeParcelable.Param(id = 12) float f16, @SafeParcelable.Param(id = 13) boolean z11) {
        this.zzct = true;
        this.zzda = 0.0f;
        this.zzdb = 0.5f;
        this.zzdc = 0.5f;
        this.zzcu = false;
        this.zzcx = new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzcy = latLng;
        this.width = f10;
        this.height = f11;
        this.zzcz = latLngBounds;
        this.bearing = f12;
        this.zzcs = f13;
        this.zzct = z10;
        this.zzda = f14;
        this.zzdb = f15;
        this.zzdc = f16;
        this.zzcu = z11;
    }

    private final GroundOverlayOptions zza(LatLng latLng, float f10, float f11) {
        this.zzcy = latLng;
        this.width = f10;
        this.height = f11;
        return this;
    }

    public final GroundOverlayOptions anchor(float f10, float f11) {
        this.zzdb = f10;
        this.zzdc = f11;
        return this;
    }

    public final GroundOverlayOptions bearing(float f10) {
        this.bearing = ((f10 % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public final GroundOverlayOptions clickable(boolean z10) {
        this.zzcu = z10;
        return this;
    }

    public final float getAnchorU() {
        return this.zzdb;
    }

    public final float getAnchorV() {
        return this.zzdc;
    }

    public final float getBearing() {
        return this.bearing;
    }

    public final LatLngBounds getBounds() {
        return this.zzcz;
    }

    public final float getHeight() {
        return this.height;
    }

    public final BitmapDescriptor getImage() {
        return this.zzcx;
    }

    public final LatLng getLocation() {
        return this.zzcy;
    }

    public final float getTransparency() {
        return this.zzda;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final GroundOverlayOptions image(@NonNull BitmapDescriptor bitmapDescriptor) {
        Preconditions.checkNotNull(bitmapDescriptor, "imageDescriptor must not be null");
        this.zzcx = bitmapDescriptor;
        return this;
    }

    public final boolean isClickable() {
        return this.zzcu;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f10) {
        Preconditions.checkState(this.zzcz == null, "Position has already been set using positionFromBounds");
        Preconditions.checkArgument(latLng != null, "Location must be specified");
        Preconditions.checkArgument(f10 >= 0.0f, "Width must be non-negative");
        return zza(latLng, f10, -1.0f);
    }

    public final GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        LatLng latLng = this.zzcy;
        boolean z10 = latLng == null;
        String strValueOf = String.valueOf(latLng);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 46);
        sb2.append("Position has already been set using position: ");
        sb2.append(strValueOf);
        Preconditions.checkState(z10, sb2.toString());
        this.zzcz = latLngBounds;
        return this;
    }

    public final GroundOverlayOptions transparency(float f10) {
        Preconditions.checkArgument(f10 >= 0.0f && f10 <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzda = f10;
        return this;
    }

    public final GroundOverlayOptions visible(boolean z10) {
        this.zzct = z10;
        return this;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIBinder(parcel, 2, this.zzcx.zzb().asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getLocation(), i10, false);
        SafeParcelWriter.writeFloat(parcel, 4, getWidth());
        SafeParcelWriter.writeFloat(parcel, 5, getHeight());
        SafeParcelWriter.writeParcelable(parcel, 6, getBounds(), i10, false);
        SafeParcelWriter.writeFloat(parcel, 7, getBearing());
        SafeParcelWriter.writeFloat(parcel, 8, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 9, isVisible());
        SafeParcelWriter.writeFloat(parcel, 10, getTransparency());
        SafeParcelWriter.writeFloat(parcel, 11, getAnchorU());
        SafeParcelWriter.writeFloat(parcel, 12, getAnchorV());
        SafeParcelWriter.writeBoolean(parcel, 13, isClickable());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final GroundOverlayOptions zIndex(float f10) {
        this.zzcs = f10;
        return this;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f10, float f11) {
        Preconditions.checkState(this.zzcz == null, "Position has already been set using positionFromBounds");
        Preconditions.checkArgument(latLng != null, "Location must be specified");
        Preconditions.checkArgument(f10 >= 0.0f, "Width must be non-negative");
        Preconditions.checkArgument(f11 >= 0.0f, "Height must be non-negative");
        return zza(latLng, f10, f11);
    }

    public GroundOverlayOptions() {
        this.zzct = true;
        this.zzda = 0.0f;
        this.zzdb = 0.5f;
        this.zzdc = 0.5f;
        this.zzcu = false;
    }
}
