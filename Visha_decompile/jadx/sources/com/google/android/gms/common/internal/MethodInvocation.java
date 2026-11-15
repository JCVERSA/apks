package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.e2e;
import defpackage.z09;

public class MethodInvocation extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new e2e();
    private final int zaa;
    private final int zab;
    private final int zac;
    private final long zad;
    private final long zae;

    @Nullable
    private final String zaf;

    @Nullable
    private final String zag;
    private final int zah;
    private final int zai;

    @Deprecated
    public MethodInvocation(int i, int i2, int i3, long j, long j2, @Nullable String str, @Nullable String str2, int i4) {
        this(i, i2, i3, j, j2, str, str2, i4, -1);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zab);
        z09.s(parcel, 3, this.zac);
        z09.w(parcel, 4, this.zad);
        z09.w(parcel, 5, this.zae);
        z09.D(parcel, 6, this.zaf, false);
        z09.D(parcel, 7, this.zag, false);
        z09.s(parcel, 8, this.zah);
        z09.s(parcel, 9, this.zai);
        z09.b(parcel, iA);
    }

    public MethodInvocation(int i, int i2, int i3, long j, long j2, @Nullable String str, @Nullable String str2, int i4, int i5) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = j;
        this.zae = j2;
        this.zaf = str;
        this.zag = str2;
        this.zah = i4;
        this.zai = i5;
    }
}
