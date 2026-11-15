package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zav;
import defpackage.y1e;
import defpackage.z09;

public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new y1e();
    final int zaa;
    private final ConnectionResult zab;

    @Nullable
    private final zav zac;

    public zak(int i, ConnectionResult connectionResult, @Nullable zav zavVar) {
        this.zaa = i;
        this.zab = connectionResult;
        this.zac = zavVar;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zaa);
        z09.B(parcel, 2, this.zab, i, false);
        z09.B(parcel, 3, this.zac, i, false);
        z09.b(parcel, iA);
    }

    public final ConnectionResult zaa() {
        return this.zab;
    }

    @Nullable
    public final zav zab() {
        return this.zac;
    }
}
