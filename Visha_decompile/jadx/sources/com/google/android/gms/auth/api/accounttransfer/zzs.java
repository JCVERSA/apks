package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.z09;
import defpackage.zkj;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new zkj();
    private static final ArrayMap zzb;
    final int zza;
    private List zzc;
    private List zzd;
    private List zze;
    private List zzf;
    private List zzg;

    static {
        ArrayMap arrayMap = new ArrayMap();
        zzb = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.forStrings("registered", 2));
        arrayMap.put("in_progress", FastJsonResponse.Field.forStrings("in_progress", 3));
        arrayMap.put("success", FastJsonResponse.Field.forStrings("success", 4));
        arrayMap.put("failed", FastJsonResponse.Field.forStrings("failed", 5));
        arrayMap.put("escrowed", FastJsonResponse.Field.forStrings("escrowed", 6));
    }

    public zzs() {
        this.zza = 1;
    }

    @Override
    public final Map getFieldMappings() {
        return zzb;
    }

    @Override
    public final Object getFieldValue(FastJsonResponse.Field field) {
        switch (field.getSafeParcelableFieldId()) {
            case 1:
                return Integer.valueOf(this.zza);
            case 2:
                return this.zzc;
            case 3:
                return this.zzd;
            case 4:
                return this.zze;
            case 5:
                return this.zzf;
            case 6:
                return this.zzg;
            default:
                throw new IllegalStateException("Unknown SafeParcelable id=" + field.getSafeParcelableFieldId());
        }
    }

    @Override
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return true;
    }

    @Override
    public final void setStringsInternal(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.zzc = arrayList;
            return;
        }
        if (safeParcelableFieldId == 3) {
            this.zzd = arrayList;
            return;
        }
        if (safeParcelableFieldId == 4) {
            this.zze = arrayList;
        } else if (safeParcelableFieldId == 5) {
            this.zzf = arrayList;
        } else {
            if (safeParcelableFieldId != 6) {
                throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(safeParcelableFieldId)));
            }
            this.zzg = arrayList;
        }
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.F(parcel, 2, this.zzc, false);
        z09.F(parcel, 3, this.zzd, false);
        z09.F(parcel, 4, this.zze, false);
        z09.F(parcel, 5, this.zzf, false);
        z09.F(parcel, 6, this.zzg, false);
        z09.b(parcel, iA);
    }

    public zzs(int i, @Nullable List list, @Nullable List list2, @Nullable List list3, @Nullable List list4, @Nullable List list5) {
        this.zza = i;
        this.zzc = list;
        this.zzd = list2;
        this.zze = list3;
        this.zzf = list4;
        this.zzg = list5;
    }
}
