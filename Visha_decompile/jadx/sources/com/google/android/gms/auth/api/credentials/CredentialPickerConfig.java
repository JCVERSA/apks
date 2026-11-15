package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.d3e;
import defpackage.z09;

@Deprecated
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new d3e();
    final int zba;
    private final boolean zbb;
    private final boolean zbc;
    private final int zbd;

    public static class a {
        public boolean a = false;
        public boolean b = true;
        public int c = 1;

        public CredentialPickerConfig a() {
            return new CredentialPickerConfig(2, this.a, this.b, false, this.c);
        }
    }

    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        this.zba = i;
        this.zbb = z;
        this.zbc = z2;
        if (i < 2) {
            this.zbd = true == z3 ? 3 : 1;
        } else {
            this.zbd = i2;
        }
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.zbd == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zbb;
    }

    public boolean shouldShowCancelButton() {
        return this.zbc;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, shouldShowAddAccountButton());
        z09.g(parcel, 2, shouldShowCancelButton());
        z09.g(parcel, 3, isForNewAccount());
        z09.s(parcel, 4, this.zbd);
        z09.s(parcel, 1000, this.zba);
        z09.b(parcel, iA);
    }
}
