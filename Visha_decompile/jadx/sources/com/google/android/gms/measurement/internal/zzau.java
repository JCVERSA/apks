package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.gre;
import defpackage.jpe;
import defpackage.z09;
import java.util.Iterator;
import org.mozilla.javascript.ES6Iterator;

public final class zzau extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzau> CREATOR = new gre();
    private final Bundle zza;

    public zzau(Bundle bundle) {
        this.zza = bundle;
    }

    @Override
    public final Iterator<String> iterator() {
        return new jpe(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.j(parcel, 2, zzc(), false);
        z09.b(parcel, iA);
    }

    public final int zza() {
        return this.zza.size();
    }

    public final Bundle zzc() {
        return new Bundle(this.zza);
    }

    public final Double zzd(String str) {
        return Double.valueOf(this.zza.getDouble(ES6Iterator.VALUE_PROPERTY));
    }

    public final Long zze(String str) {
        return Long.valueOf(this.zza.getLong(ES6Iterator.VALUE_PROPERTY));
    }

    public final Object zzf(String str) {
        return this.zza.get(str);
    }

    public final String zzg(String str) {
        return this.zza.getString(str);
    }
}
