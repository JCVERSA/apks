package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.e3e;
import defpackage.wd8;
import defpackage.z09;

public final class BeginSignInResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new e3e();
    private final PendingIntent zba;

    public BeginSignInResult(@NonNull PendingIntent pendingIntent) {
        this.zba = (PendingIntent) wd8.l(pendingIntent);
    }

    @NonNull
    public PendingIntent getPendingIntent() {
        return this.zba;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getPendingIntent(), i, false);
        z09.b(parcel, iA);
    }
}
