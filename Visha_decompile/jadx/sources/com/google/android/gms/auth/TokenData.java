package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.daj;
import defpackage.jc7;
import defpackage.wd8;
import defpackage.z09;
import java.util.List;

public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<TokenData> CREATOR = new daj();
    final int zza;
    private final String zzb;

    @Nullable
    private final Long zzc;
    private final boolean zzd;
    private final boolean zze;

    @Nullable
    private final List zzf;

    @Nullable
    private final String zzg;

    public TokenData(int i, String str, @Nullable Long l, boolean z, boolean z2, @Nullable List list, @Nullable String str2) {
        this.zza = i;
        this.zzb = wd8.f(str);
        this.zzc = l;
        this.zzd = z;
        this.zze = z2;
        this.zzf = list;
        this.zzg = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.zzb, tokenData.zzb) && jc7.a(this.zzc, tokenData.zzc) && this.zzd == tokenData.zzd && this.zze == tokenData.zze && jc7.a(this.zzf, tokenData.zzf) && jc7.a(this.zzg, tokenData.zzg);
    }

    public final int hashCode() {
        return jc7.b(this.zzb, this.zzc, Boolean.valueOf(this.zzd), Boolean.valueOf(this.zze), this.zzf, this.zzg);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.y(parcel, 3, this.zzc, false);
        z09.g(parcel, 4, this.zzd);
        z09.g(parcel, 5, this.zze);
        z09.F(parcel, 6, this.zzf, false);
        z09.D(parcel, 7, this.zzg, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final String zza() {
        return this.zzb;
    }
}
