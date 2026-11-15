package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.raf;
import defpackage.z09;
import java.util.Map;

public final class zzbtq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbtq> CREATOR = new raf();
    public final View zza;
    public final Map zzb;

    public zzbtq(IBinder iBinder, IBinder iBinder2) {
        this.zza = (View) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzb = (Map) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        View view = this.zza;
        int iA = z09.a(parcel);
        z09.r(parcel, 1, ObjectWrapper.wrap(view).asBinder(), false);
        z09.r(parcel, 2, ObjectWrapper.wrap(this.zzb).asBinder(), false);
        z09.b(parcel, iA);
    }
}
