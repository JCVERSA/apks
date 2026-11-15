package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.j4e;
import defpackage.z09;

public final class zbu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbu> CREATOR = new j4e();
    private final Credential zba;

    public zbu(Credential credential) {
        this.zba = credential;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zba, i, false);
        z09.b(parcel, iA);
    }
}
