package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;

public final class C2462ca implements Parcelable {
    public static final C2437ba CREATOR = new C2437ba();
    public final Boolean a;
    public final IdentifierStatus b;
    public final String c;

    public C2462ca(Boolean bool, IdentifierStatus identifierStatus, String str) {
        this.a = bool;
        this.b = identifierStatus;
        this.c = str;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2462ca)) {
            return false;
        }
        C2462ca c2462ca = (C2462ca) obj;
        return y45.e(this.a, c2462ca.a) && this.b == c2462ca.b && y45.e(this.c, c2462ca.c);
    }

    public final int hashCode() {
        Boolean bool = this.a;
        int iHashCode = (this.b.hashCode() + ((bool == null ? 0 : bool.hashCode()) * 31)) * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "FeaturesInternal(sslPinning=" + this.a + ", status=" + this.b + ", errorExplanation=" + this.c + ')';
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.a);
        parcel.writeString(this.b.getValue());
        parcel.writeString(this.c);
    }

    public C2462ca() {
        this(null, IdentifierStatus.UNKNOWN, null);
    }
}
