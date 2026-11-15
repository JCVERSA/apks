package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zat;
import defpackage.x1e;
import defpackage.z09;

public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new x1e();
    final int zaa;
    final zat zab;

    public zai(int i, zat zatVar) {
        this.zaa = i;
        this.zab = zatVar;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zaa);
        z09.B(parcel, 2, this.zab, i, false);
        z09.b(parcel, iA);
    }
}
