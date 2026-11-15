package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GetServiceRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new i();
    static final Scope[] zza = new Scope[0];
    static final Feature[] zzb = new Feature[0];
    final int zzc;
    final int zzd;
    final int zze;
    String zzf;

    @Nullable
    IBinder zzg;
    Scope[] zzh;
    Bundle zzi;

    @Nullable
    Account zzj;
    Feature[] zzk;
    Feature[] zzl;
    final boolean zzm;
    final int zzn;
    boolean zzo;

    @Nullable
    private final String zzp;

    public GetServiceRequest(int i, int i2, int i3, String str, @Nullable IBinder iBinder, Scope[] scopeArr, Bundle bundle, @Nullable Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4, boolean z2, @Nullable String str2) {
        scopeArr = scopeArr == null ? zza : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        featureArr = featureArr == null ? zzb : featureArr;
        featureArr2 = featureArr2 == null ? zzb : featureArr2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        if ("com.google.android.gms".equals(str)) {
            this.zzf = "com.google.android.gms";
        } else {
            this.zzf = str;
        }
        if (i < 2) {
            this.zzj = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.zzg = iBinder;
            this.zzj = account;
        }
        this.zzh = scopeArr;
        this.zzi = bundle;
        this.zzk = featureArr;
        this.zzl = featureArr2;
        this.zzm = z;
        this.zzn = i4;
        this.zzo = z2;
        this.zzp = str2;
    }

    @Nullable
    public String getAttributionTag() {
        return this.zzp;
    }

    @NonNull
    public String getCallingPackage() {
        return this.zzf;
    }

    @NonNull
    public Feature[] getClientApiFeatures() {
        return this.zzl;
    }

    public int getClientLibraryVersion() {
        return this.zze;
    }

    @NonNull
    public Bundle getExtraArgs() {
        return this.zzi;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}
