package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.wfj;
import defpackage.z09;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzo extends zzbz {
    public static final Parcelable.Creator<zzo> CREATOR = new wfj();
    private static final HashMap zzc;
    final Set zza;
    final int zzb;
    private ArrayList zzd;
    private int zze;
    private zzs zzf;

    static {
        HashMap map = new HashMap();
        zzc = map;
        map.put("authenticatorData", FastJsonResponse.Field.forConcreteTypeArray("authenticatorData", 2, zzu.class));
        map.put("progress", FastJsonResponse.Field.forConcreteType("progress", 4, zzs.class));
    }

    public zzo() {
        this.zza = new HashSet(1);
        this.zzb = 1;
    }

    @Override
    public final void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known ConcreteTypeArray type. Found %s", Integer.valueOf(safeParcelableFieldId), arrayList.getClass().getCanonicalName()));
        }
        this.zzd = arrayList;
        this.zza.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 4) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()));
        }
        this.zzf = (zzs) fastJsonResponse;
        this.zza.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override
    public final Map getFieldMappings() {
        return zzc;
    }

    @Override
    public final Object getFieldValue(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 1) {
            return Integer.valueOf(this.zzb);
        }
        if (safeParcelableFieldId == 2) {
            return this.zzd;
        }
        if (safeParcelableFieldId == 4) {
            return this.zzf;
        }
        throw new IllegalStateException("Unknown SafeParcelable id=" + field.getSafeParcelableFieldId());
    }

    @Override
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.zza.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        Set set = this.zza;
        if (set.contains(1)) {
            z09.s(parcel, 1, this.zzb);
        }
        if (set.contains(2)) {
            z09.H(parcel, 2, this.zzd, true);
        }
        if (set.contains(3)) {
            z09.s(parcel, 3, this.zze);
        }
        if (set.contains(4)) {
            z09.B(parcel, 4, this.zzf, i, true);
        }
        z09.b(parcel, iA);
    }

    public zzo(Set set, int i, ArrayList arrayList, int i2, zzs zzsVar) {
        this.zza = set;
        this.zzb = i;
        this.zzd = arrayList;
        this.zze = i2;
        this.zzf = zzsVar;
    }
}
