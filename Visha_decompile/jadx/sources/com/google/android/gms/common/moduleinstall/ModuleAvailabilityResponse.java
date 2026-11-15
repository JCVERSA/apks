package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ezd;
import defpackage.z09;

public class ModuleAvailabilityResponse extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ModuleAvailabilityResponse> CREATOR = new ezd();
    private final boolean zaa;
    private final int zab;

    public ModuleAvailabilityResponse(boolean z, int i) {
        this.zaa = z;
        this.zab = i;
    }

    public boolean areModulesAvailable() {
        return this.zaa;
    }

    public int getAvailabilityStatus() {
        return this.zab;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, areModulesAvailable());
        z09.s(parcel, 2, getAvailabilityStatus());
        z09.b(parcel, iA);
    }
}
