package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jc7;
import defpackage.m3e;
import defpackage.n3e;
import defpackage.z09;

public class GetPhoneNumberHintIntentRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GetPhoneNumberHintIntentRequest> CREATOR = new n3e();
    private final int zba;

    public static final class a {
        public a(m3e m3eVar) {
        }
    }

    public GetPhoneNumberHintIntentRequest(int i) {
        this.zba = i;
    }

    @NonNull
    public static a builder() {
        return new a(null);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof GetPhoneNumberHintIntentRequest) {
            return jc7.a(Integer.valueOf(this.zba), Integer.valueOf(((GetPhoneNumberHintIntentRequest) obj).zba));
        }
        return false;
    }

    public int hashCode() {
        return jc7.b(Integer.valueOf(this.zba));
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zba);
        z09.b(parcel, iA);
    }
}
