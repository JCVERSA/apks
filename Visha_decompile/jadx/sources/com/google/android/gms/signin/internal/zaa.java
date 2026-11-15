package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.lu8;
import defpackage.xzd;
import defpackage.z09;

public final class zaa extends AbstractSafeParcelable implements lu8 {
    public static final Parcelable.Creator<zaa> CREATOR = new xzd();
    final int zaa;
    private int zab;

    @Nullable
    private Intent zac;

    public zaa() {
        this(2, 0, null);
    }

    @Override
    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zab);
        z09.B(parcel, 3, this.zac, i, false);
        z09.b(parcel, iA);
    }

    public zaa(int i, int i2, @Nullable Intent intent) {
        this.zaa = i;
        this.zab = i2;
        this.zac = intent;
    }
}
