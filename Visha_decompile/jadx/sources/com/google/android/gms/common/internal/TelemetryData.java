package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jzd;
import defpackage.z09;
import java.util.ArrayList;
import java.util.List;

public class TelemetryData extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<TelemetryData> CREATOR = new jzd();
    private final int zaa;
    private List zab;

    public TelemetryData(int i, List list) {
        this.zaa = i;
        this.zab = list;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zaa);
        z09.H(parcel, 2, this.zab, false);
        z09.b(parcel, iA);
    }

    public final int zaa() {
        return this.zaa;
    }

    @Nullable
    public final List zab() {
        return this.zab;
    }

    public final void zac(@NonNull MethodInvocation methodInvocation) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(methodInvocation);
    }
}
