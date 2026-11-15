package io.appmetrica.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.impl.C2538fb;

public class IdentifiersResult implements Parcelable {
    public static final Parcelable.Creator<IdentifiersResult> CREATOR = new C2538fb();

    @Nullable
    public final String errorExplanation;

    @Nullable
    public final String id;

    @NonNull
    public final IdentifierStatus status;

    public IdentifiersResult(@Nullable String str, @NonNull IdentifierStatus identifierStatus, @Nullable String str2) {
        this.id = str;
        this.status = identifierStatus;
        this.errorExplanation = str2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IdentifiersResult identifiersResult = (IdentifiersResult) obj;
        String str = this.id;
        if (str == null ? identifiersResult.id != null : !str.equals(identifiersResult.id)) {
            return false;
        }
        if (this.status != identifiersResult.status) {
            return false;
        }
        String str2 = this.errorExplanation;
        if (str2 != null) {
            return str2.equals(identifiersResult.errorExplanation);
        }
        return identifiersResult.errorExplanation == null;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (this.status.hashCode() + ((str != null ? str.hashCode() : 0) * 31)) * 31;
        String str2 = this.errorExplanation;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "IdentifiersResult{id='" + this.id + "', status=" + this.status + ", errorExplanation='" + this.errorExplanation + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.status.getValue());
        parcel.writeString(this.errorExplanation);
    }
}
