package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.dj4;
import defpackage.hzd;
import defpackage.z09;

public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new hzd();
    final int zaa;
    private int zab;
    private Bundle zac;

    public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.zaa = i;
        this.zab = i2;
        this.zac = bundle;
    }

    public int getType() {
        return this.zab;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zaa);
        z09.s(parcel, 2, getType());
        z09.j(parcel, 3, this.zac, false);
        z09.b(parcel, iA);
    }

    public GoogleSignInOptionsExtensionParcelable(@NonNull dj4 dj4Var) {
        this(1, dj4Var.a(), dj4Var.toBundle());
    }
}
