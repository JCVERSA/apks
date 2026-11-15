package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.esi;
import defpackage.xxh;
import defpackage.z09;

public final class zzfnz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfnz> CREATOR = new xxh();
    public final int zza;
    private t zzb = null;
    private byte[] zzc;

    public zzfnz(int i, byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        t tVar = this.zzb;
        if (tVar != null || this.zzc == null) {
            if (tVar == null || this.zzc != null) {
                if (tVar != null && this.zzc != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (tVar != null || this.zzc != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        byte[] bArrL = this.zzc;
        if (bArrL == null) {
            bArrL = this.zzb.l();
        }
        z09.k(parcel, 2, bArrL, false);
        z09.b(parcel, iA);
    }

    public final t zza() {
        if (this.zzb == null) {
            try {
                this.zzb = t.R0(this.zzc, esi.a());
                this.zzc = null;
            } catch (zzgyk | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzb();
        return this.zzb;
    }
}
