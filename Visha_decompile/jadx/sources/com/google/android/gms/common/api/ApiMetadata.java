package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.a5e;
import defpackage.jc7;
import defpackage.z09;

public final class ApiMetadata extends AbstractSafeParcelable {

    @NonNull
    public static final ApiMetadata zza;

    @Nullable
    private final ComplianceOptions zzc;
    private final boolean zzd;
    private boolean zze;

    @NonNull
    public static final Parcelable.Creator<ApiMetadata> CREATOR = a5e.a();
    private static final ApiMetadata zzb = newBuilder().a();

    public static final class a {
        public ComplianceOptions a;
        public boolean b = false;
        public boolean c;

        public ApiMetadata a() {
            ApiMetadata apiMetadata = new ApiMetadata(this.a, this.b);
            apiMetadata.zza(this.c);
            return apiMetadata;
        }

        public a b(boolean z) {
            this.b = z;
            return this;
        }

        public a c(ComplianceOptions complianceOptions) {
            this.a = complianceOptions;
            return this;
        }

        public final a d(boolean z) {
            this.c = z;
            return this;
        }
    }

    static {
        a aVarNewBuilder = newBuilder();
        aVarNewBuilder.d(true);
        zza = aVarNewBuilder.a();
    }

    public ApiMetadata(@Nullable ComplianceOptions complianceOptions, boolean z) {
        this.zzc = complianceOptions;
        this.zzd = z;
    }

    @NonNull
    public static final ApiMetadata fromComplianceOptions(@NonNull ComplianceOptions complianceOptions) {
        a aVarNewBuilder = newBuilder();
        aVarNewBuilder.c(complianceOptions);
        return aVarNewBuilder.a();
    }

    @NonNull
    public static final ApiMetadata getEmptyInstance() {
        return zzb;
    }

    @NonNull
    public static a newBuilder() {
        return new a();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ApiMetadata)) {
            return false;
        }
        ApiMetadata apiMetadata = (ApiMetadata) obj;
        return jc7.a(this.zzc, apiMetadata.zzc) && this.zze == apiMetadata.zze && this.zzd == apiMetadata.zzd;
    }

    public final int hashCode() {
        return jc7.b(this.zzc, Boolean.valueOf(this.zze), Boolean.valueOf(this.zzd));
    }

    @NonNull
    public a toBuilder() {
        a aVarNewBuilder = newBuilder();
        aVarNewBuilder.c(this.zzc);
        aVarNewBuilder.b(this.zzd);
        aVarNewBuilder.d(this.zze);
        return aVarNewBuilder;
    }

    @NonNull
    public final String toString() {
        String strValueOf = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 31);
        sb.append("ApiMetadata(complianceOptions=");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        if (this.zze) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zzc, i, false);
        z09.g(parcel, 2, this.zzd);
        z09.b(parcel, iA);
    }

    public final void zza(boolean z) {
        this.zze = z;
    }
}
