package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.yve;
import defpackage.z09;

public class AccountChangeEventsRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new yve();
    final int zza;
    int zzb;

    @Deprecated
    String zzc;
    Account zzd;

    public AccountChangeEventsRequest() {
        this.zza = 1;
    }

    @NonNull
    public Account getAccount() {
        return this.zzd;
    }

    @NonNull
    @Deprecated
    public String getAccountName() {
        return this.zzc;
    }

    public int getEventIndex() {
        return this.zzb;
    }

    @NonNull
    public AccountChangeEventsRequest setAccount(@NonNull Account account) {
        this.zzd = account;
        return this;
    }

    @NonNull
    @Deprecated
    public AccountChangeEventsRequest setAccountName(@NonNull String str) {
        this.zzc = str;
        return this;
    }

    @NonNull
    public AccountChangeEventsRequest setEventIndex(int i) {
        this.zzb = i;
        return this;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.s(parcel, 2, this.zzb);
        z09.D(parcel, 3, this.zzc, false);
        z09.B(parcel, 4, this.zzd, i, false);
        z09.b(parcel, iA);
    }

    public AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.zzd = account;
        } else {
            this.zzd = new Account(str, "com.google");
        }
    }
}
