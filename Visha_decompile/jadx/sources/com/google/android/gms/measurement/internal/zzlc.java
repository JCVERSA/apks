package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.t8j;
import defpackage.v8j;
import defpackage.wd8;

public final class zzlc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzlc> CREATOR = new t8j();
    public final int zza;
    public final String zzb;
    public final long zzc;

    @Nullable
    public final Long zzd;

    @Nullable
    public final String zze;
    public final String zzf;

    @Nullable
    public final Double zzg;

    public zzlc(int i, String str, long j, @Nullable Long l, Float f, @Nullable String str2, String str3, @Nullable Double d) {
        this.zza = i;
        this.zzb = str;
        this.zzc = j;
        this.zzd = l;
        if (i == 1) {
            this.zzg = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzg = d;
        }
        this.zze = str2;
        this.zzf = str3;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        t8j.a(this, parcel, i);
    }

    @Nullable
    public final Object zza() {
        Long l = this.zzd;
        if (l != null) {
            return l;
        }
        Double d = this.zzg;
        if (d != null) {
            return d;
        }
        String str = this.zze;
        if (str != null) {
            return str;
        }
        return null;
    }

    public zzlc(v8j v8jVar) {
        throw null;
    }

    public zzlc(String str, long j, @Nullable Object obj, String str2) {
        wd8.f(str);
        this.zza = 2;
        this.zzb = str;
        this.zzc = j;
        this.zzf = str2;
        if (obj == null) {
            this.zzd = null;
            this.zzg = null;
            this.zze = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzd = (Long) obj;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof String) {
            this.zzd = null;
            this.zzg = null;
            this.zze = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.zzd = null;
                this.zzg = (Double) obj;
                this.zze = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
