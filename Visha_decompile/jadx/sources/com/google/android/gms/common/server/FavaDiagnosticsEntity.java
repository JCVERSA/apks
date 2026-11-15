package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.fzd;
import defpackage.z09;

public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new fzd();
    final int zaa;

    @NonNull
    public final String zab;
    public final int zac;

    public FavaDiagnosticsEntity(int i, @NonNull String str, int i2) {
        this.zaa = i;
        this.zab = str;
        this.zac = i2;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.zab, false);
        z09.s(parcel, 3, this.zac);
        z09.b(parcel, iA);
    }

    public FavaDiagnosticsEntity(@NonNull String str, int i) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i;
    }
}
