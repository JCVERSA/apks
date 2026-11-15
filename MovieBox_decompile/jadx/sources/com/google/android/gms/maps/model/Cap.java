package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;

@SafeParcelable.Class(creator = "CapCreator")
@SafeParcelable.Reserved({1})
public class Cap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();
    private static final String TAG = "Cap";

    @Nullable
    @SafeParcelable.Field(getter = "getWrappedBitmapDescriptorImplBinder", id = 3, type = "android.os.IBinder")
    private final BitmapDescriptor bitmapDescriptor;

    @SafeParcelable.Field(getter = "getType", id = 2)
    private final int type;

    @Nullable
    @SafeParcelable.Field(getter = "getBitmapRefWidth", id = 4)
    private final Float zzcn;

    private Cap(int i10, @Nullable BitmapDescriptor bitmapDescriptor, @Nullable Float f10) {
        Preconditions.checkArgument(i10 != 3 || (bitmapDescriptor != null && (f10 != null && (f10.floatValue() > 0.0f ? 1 : (f10.floatValue() == 0.0f ? 0 : -1)) > 0)), String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i10), bitmapDescriptor, f10));
        this.type = i10;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzcn = f10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && Objects.equal(this.bitmapDescriptor, cap.bitmapDescriptor) && Objects.equal(this.zzcn, cap.zzcn);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.type), this.bitmapDescriptor, this.zzcn);
    }

    public String toString() {
        int i10 = this.type;
        StringBuilder sb2 = new StringBuilder(23);
        sb2.append("[Cap: type=");
        sb2.append(i10);
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.type);
        BitmapDescriptor bitmapDescriptor = this.bitmapDescriptor;
        SafeParcelWriter.writeIBinder(parcel, 3, bitmapDescriptor == null ? null : bitmapDescriptor.zzb().asBinder(), false);
        SafeParcelWriter.writeFloatObject(parcel, 4, this.zzcn, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final Cap zzh() {
        int i10 = this.type;
        if (i10 == 0) {
            return new ButtCap();
        }
        if (i10 == 1) {
            return new SquareCap();
        }
        if (i10 == 2) {
            return new RoundCap();
        }
        if (i10 == 3) {
            return new CustomCap(this.bitmapDescriptor, this.zzcn.floatValue());
        }
        String str = TAG;
        StringBuilder sb2 = new StringBuilder(29);
        sb2.append("Unknown Cap type: ");
        sb2.append(i10);
        Log.w(str, sb2.toString());
        return this;
    }

    @SafeParcelable.Constructor
    Cap(@SafeParcelable.Param(id = 2) int i10, @Nullable @SafeParcelable.Param(id = 3) IBinder iBinder, @Nullable @SafeParcelable.Param(id = 4) Float f10) {
        this(i10, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder)), f10);
    }

    protected Cap(@NonNull BitmapDescriptor bitmapDescriptor, float f10) {
        this(3, bitmapDescriptor, Float.valueOf(f10));
    }

    protected Cap(int i10) {
        this(i10, (BitmapDescriptor) null, (Float) null);
    }
}
