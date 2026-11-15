package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bwe;
import defpackage.jc7;
import defpackage.z09;

public class Feature extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<Feature> CREATOR = new bwe();
    private final String zza;

    @Deprecated
    private final int zzb;
    private final long zzc;
    private final boolean zzd;

    public Feature(@NonNull String str, int i, long j, boolean z) {
        this.zza = str;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (jc7.a(getName(), feature.getName()) && getVersion() == feature.getVersion() && getIsFullyRolledOut() == feature.getIsFullyRolledOut()) {
                return true;
            }
        }
        return false;
    }

    public boolean getIsFullyRolledOut() {
        return this.zzd;
    }

    @NonNull
    public String getName() {
        return this.zza;
    }

    public long getVersion() {
        long j = this.zzc;
        return j == -1 ? this.zzb : j;
    }

    public final int hashCode() {
        return jc7.b(getName(), Long.valueOf(getVersion()), Boolean.valueOf(getIsFullyRolledOut()));
    }

    @NonNull
    public final String toString() {
        jc7.a aVarC = jc7.c(this);
        aVarC.a("name", getName());
        aVarC.a("version", Long.valueOf(getVersion()));
        aVarC.a("is_fully_rolled_out", Boolean.valueOf(getIsFullyRolledOut()));
        return aVarC.toString();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, getName(), false);
        z09.s(parcel, 2, this.zzb);
        z09.w(parcel, 3, getVersion());
        z09.g(parcel, 4, getIsFullyRolledOut());
        z09.b(parcel, iA);
    }

    public Feature(@NonNull String str, int i, long j) {
        this(str, i, j, false);
    }

    public Feature(@NonNull String str, long j) {
        this(str, -1, j, false);
    }

    public Feature(@NonNull String str, long j, boolean z) {
        this(str, -1, j, z);
    }
}
