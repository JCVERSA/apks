package com.google.android.gms.common.moduleinstall;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.uzd;
import defpackage.z09;

public class ModuleInstallIntentResponse extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ModuleInstallIntentResponse> CREATOR = new uzd();

    @Nullable
    private final PendingIntent zaa;

    public ModuleInstallIntentResponse(@Nullable PendingIntent pendingIntent) {
        this.zaa = pendingIntent;
    }

    @Nullable
    public PendingIntent getPendingIntent() {
        return this.zaa;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, getPendingIntent(), i, false);
        z09.b(parcel, iA);
    }
}
