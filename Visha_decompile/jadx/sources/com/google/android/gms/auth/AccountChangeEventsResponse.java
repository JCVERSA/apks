package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.dgf;
import defpackage.wd8;
import defpackage.z09;
import java.util.List;

public class AccountChangeEventsResponse extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new dgf();
    final int zza;
    final List zzb;

    public AccountChangeEventsResponse(int i, List list) {
        this.zza = i;
        this.zzb = (List) wd8.l(list);
    }

    @NonNull
    public List<AccountChangeEvent> getEvents() {
        return this.zzb;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.H(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }

    public AccountChangeEventsResponse(@NonNull List<AccountChangeEvent> list) {
        this.zza = 1;
        this.zzb = (List) wd8.l(list);
    }
}
