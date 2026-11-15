package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.lu8;
import defpackage.u1e;
import defpackage.z09;
import java.util.List;

public final class zag extends AbstractSafeParcelable implements lu8 {
    public static final Parcelable.Creator<zag> CREATOR = new u1e();
    private final List zaa;

    @Nullable
    private final String zab;

    public zag(List list, @Nullable String str) {
        this.zaa = list;
        this.zab = str;
    }

    @Override
    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        List list = this.zaa;
        int iA = z09.a(parcel);
        z09.F(parcel, 1, list, false);
        z09.D(parcel, 2, this.zab, false);
        z09.b(parcel, iA);
    }
}
