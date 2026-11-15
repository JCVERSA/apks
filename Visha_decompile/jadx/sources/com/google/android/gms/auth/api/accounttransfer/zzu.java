package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.jnj;
import defpackage.z09;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new jnj();
    private static final HashMap zzc;
    final Set zza;
    final int zzb;
    private zzw zzd;
    private String zze;
    private String zzf;
    private String zzg;

    static {
        HashMap map = new HashMap();
        zzc = map;
        map.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzw.class));
        map.put("signature", FastJsonResponse.Field.forString("signature", 3));
        map.put("package", FastJsonResponse.Field.forString("package", 4));
    }

    public zzu() {
        this.zza = new HashSet(3);
        this.zzb = 1;
    }

    @Override
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()));
        }
        this.zzd = (zzw) fastJsonResponse;
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
        if (safeParcelableFieldId == 3) {
            return this.zze;
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
    public final void setStringInternal(FastJsonResponse.Field field, String str, String str2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 3) {
            this.zze = str2;
        } else {
            if (safeParcelableFieldId != 4) {
                throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(safeParcelableFieldId)));
            }
            this.zzf = str2;
        }
        this.zza.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        Set set = this.zza;
        if (set.contains(1)) {
            z09.s(parcel, 1, this.zzb);
        }
        if (set.contains(2)) {
            z09.B(parcel, 2, this.zzd, i, true);
        }
        if (set.contains(3)) {
            z09.D(parcel, 3, this.zze, true);
        }
        if (set.contains(4)) {
            z09.D(parcel, 4, this.zzf, true);
        }
        if (set.contains(5)) {
            z09.D(parcel, 5, this.zzg, true);
        }
        z09.b(parcel, iA);
    }

    public zzu(Set set, int i, zzw zzwVar, String str, String str2, String str3) {
        this.zza = set;
        this.zzb = i;
        this.zzd = zzwVar;
        this.zze = str;
        this.zzf = str2;
        this.zzg = str3;
    }
}
