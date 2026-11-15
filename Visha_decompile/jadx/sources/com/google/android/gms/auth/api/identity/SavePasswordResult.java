package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a4e;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;

public class SavePasswordResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new a4e();
    private final PendingIntent zba;

    public SavePasswordResult(@NonNull PendingIntent pendingIntent) {
        this.zba = (PendingIntent) wd8.l(pendingIntent);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SavePasswordResult) {
            return jc7.a(this.zba, ((SavePasswordResult) obj).zba);
        }
        return false;
    }

    @NonNull
    public PendingIntent getPendingIntent() {
        return this.zba;
    }

    public int hashCode() {
        return jc7.b(this.zba);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getPendingIntent(), i, false);
        z09.b(parcel, iA);
    }
}
