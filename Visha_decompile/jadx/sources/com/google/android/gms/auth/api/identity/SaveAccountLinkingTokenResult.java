package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.w3e;
import defpackage.z09;

public class SaveAccountLinkingTokenResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenResult> CREATOR = new w3e();

    @Nullable
    private final PendingIntent zba;

    public SaveAccountLinkingTokenResult(@Nullable PendingIntent pendingIntent) {
        this.zba = pendingIntent;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SaveAccountLinkingTokenResult) {
            return jc7.a(this.zba, ((SaveAccountLinkingTokenResult) obj).zba);
        }
        return false;
    }

    @Nullable
    public PendingIntent getPendingIntent() {
        return this.zba;
    }

    public boolean hasResolution() {
        return this.zba != null;
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
