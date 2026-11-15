package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.t2e;
import defpackage.z09;

public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new t2e();
    final int zaa;
    private final Account zab;
    private final int zac;

    @Nullable
    private final GoogleSignInAccount zad;

    public zat(int i, Account account, int i2, @Nullable GoogleSignInAccount googleSignInAccount) {
        this.zaa = i;
        this.zab = account;
        this.zac = i2;
        this.zad = googleSignInAccount;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.B(parcel, 2, this.zab, i, false);
        z09.s(parcel, 3, this.zac);
        z09.B(parcel, 4, this.zad, i, false);
        z09.b(parcel, iA);
    }

    public zat(Account account, int i, @Nullable GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }
}
