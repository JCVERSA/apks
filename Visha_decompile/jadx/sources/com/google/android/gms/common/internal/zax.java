package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.w2e;
import defpackage.z09;

public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new w2e();
    final int zaa;
    private final int zab;
    private final int zac;

    @Nullable
    @Deprecated
    private final Scope[] zad;

    public zax(int i, int i2, int i3, @Nullable Scope[] scopeArr) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = scopeArr;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zab);
        z09.s(parcel, 3, this.zac);
        z09.G(parcel, 4, this.zad, i, false);
        z09.b(parcel, iA);
    }
}
