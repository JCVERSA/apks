package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.i1e;
import defpackage.wd8;
import defpackage.z09;

public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new i1e();
    private final int zaa;
    private final int zab;

    @Nullable
    private final Long zac;

    @Nullable
    private final Long zad;
    private final int zae;

    @Nullable
    private final a zaf;

    public static class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            wd8.n(j2);
            this.a = j;
            this.b = j2;
        }
    }

    public ModuleInstallStatusUpdate(int i, int i2, @Nullable Long l, @Nullable Long l2, int i3) {
        this.zaa = i;
        this.zab = i2;
        this.zac = l;
        this.zad = l2;
        this.zae = i3;
        this.zaf = (l == null || l2 == null || l2.longValue() == 0) ? null : new a(l.longValue(), l2.longValue());
    }

    public int getErrorCode() {
        return this.zae;
    }

    public int getInstallState() {
        return this.zab;
    }

    @Nullable
    public a getProgressInfo() {
        return this.zaf;
    }

    public int getSessionId() {
        return this.zaa;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, getSessionId());
        z09.s(parcel, 2, getInstallState());
        z09.y(parcel, 3, this.zac, false);
        z09.y(parcel, 4, this.zad, false);
        z09.s(parcel, 5, getErrorCode());
        z09.b(parcel, iA);
    }
}
