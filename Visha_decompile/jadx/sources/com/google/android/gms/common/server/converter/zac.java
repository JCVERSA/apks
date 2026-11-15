package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.j1e;
import defpackage.z09;

public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new j1e();
    final int zaa;
    final String zab;
    final int zac;

    public zac(int i, String str, int i2) {
        this.zaa = i;
        this.zab = str;
        this.zac = i2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.zab, false);
        z09.s(parcel, 3, this.zac);
        z09.b(parcel, iA);
    }

    public zac(String str, int i) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i;
    }
}
