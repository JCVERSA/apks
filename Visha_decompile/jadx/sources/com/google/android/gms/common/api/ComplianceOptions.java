package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ggf;
import defpackage.jc7;
import defpackage.z09;
import org.apache.commons.text.StringSubstitutor;

public final class ComplianceOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ComplianceOptions> CREATOR;

    @NonNull
    public static final ComplianceOptions zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final boolean zze;

    public static final class a {
        public int a = -1;
        public int b = -1;
        public int c = 0;
        public boolean d = true;

        public ComplianceOptions a() {
            return new ComplianceOptions(this.a, this.b, this.c, this.d);
        }

        public a b(int i) {
            this.a = i;
            return this;
        }

        public a c(int i) {
            this.b = i;
            return this;
        }

        public a d(boolean z) {
            this.d = z;
            return this;
        }

        public a e(int i) {
            this.c = i;
            return this;
        }
    }

    static {
        a aVarNewBuilder = newBuilder();
        aVarNewBuilder.b(-1);
        aVarNewBuilder.c(-1);
        aVarNewBuilder.e(0);
        aVarNewBuilder.d(true);
        zza = aVarNewBuilder.a();
        CREATOR = new ggf();
    }

    public ComplianceOptions(int i, int i2, int i3, boolean z) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = z;
    }

    @NonNull
    public static a newBuilder() {
        return new a();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ComplianceOptions)) {
            return false;
        }
        ComplianceOptions complianceOptions = (ComplianceOptions) obj;
        return this.zzb == complianceOptions.zzb && this.zzc == complianceOptions.zzc && this.zzd == complianceOptions.zzd && this.zze == complianceOptions.zze;
    }

    public final int hashCode() {
        return jc7.b(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), Boolean.valueOf(this.zze));
    }

    @NonNull
    public a toBuilder() {
        a aVar = new a();
        aVar.b(this.zzb);
        aVar.c(this.zzc);
        aVar.e(this.zzd);
        aVar.d(this.zze);
        return aVar;
    }

    @NonNull
    public final String toString() {
        int i = this.zzb;
        int length = String.valueOf(i).length();
        int i2 = this.zzc;
        int length2 = String.valueOf(i2).length();
        int i3 = this.zzd;
        int length3 = String.valueOf(i3).length();
        boolean z = this.zze;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 19 + length3 + 13 + String.valueOf(z).length() + 1);
        sb.append("ComplianceOptions{callerProductId=");
        sb.append(i);
        sb.append(", dataOwnerProductId=");
        sb.append(i2);
        sb.append(", processingReason=");
        sb.append(i3);
        sb.append(", isUserData=");
        sb.append(z);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.zzb;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zzc);
        z09.s(parcel, 3, this.zzd);
        z09.g(parcel, 4, this.zze);
        z09.b(parcel, iA);
    }

    @NonNull
    public static final a newBuilder(@NonNull Context context) {
        return newBuilder();
    }
}
