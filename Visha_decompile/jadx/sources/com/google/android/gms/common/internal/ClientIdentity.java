package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.dzd;
import defpackage.jc7;
import defpackage.z09;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class ClientIdentity extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new dzd();

    @Nullable
    public final String packageName;
    public final int uid;

    public ClientIdentity(int i, @Nullable String str) {
        this.uid = i;
        this.packageName = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.uid == this.uid && jc7.a(clientIdentity.packageName, this.packageName);
    }

    public final int hashCode() {
        return this.uid;
    }

    @NonNull
    public final String toString() {
        return this.uid + StringUtils.PROCESS_POSTFIX_DELIMITER + this.packageName;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.uid;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.packageName, false);
        z09.b(parcel, iA);
    }
}
