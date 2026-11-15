package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.j2e;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Map;

public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new j2e();
    final int zaa;
    final String zab;

    @Nullable
    final ArrayList zac;

    public zal(int i, String str, ArrayList arrayList) {
        this.zaa = i;
        this.zab = str;
        this.zac = arrayList;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.zab, false);
        z09.H(parcel, 3, this.zac, false);
        z09.b(parcel, iA);
    }

    public zal(String str, Map map) {
        ArrayList arrayList;
        this.zaa = 1;
        this.zab = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.zac = arrayList;
    }
}
