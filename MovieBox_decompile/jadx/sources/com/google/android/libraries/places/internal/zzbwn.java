package com.google.android.libraries.places.internal;

import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbwn {
    public static final zzbwm zza = new zzbwm(null);

    @JvmField
    public final byte[] zzb;

    @JvmField
    public int zzc;

    @JvmField
    public int zzd;

    @JvmField
    public boolean zze;

    @JvmField
    public final boolean zzf;

    @JvmField
    public zzbwn zzg;

    @JvmField
    public zzbwn zzh;

    public zzbwn() {
        this.zzb = new byte[8192];
        this.zzf = true;
        this.zze = false;
    }

    public final zzbwn zza() {
        zzbwn zzbwnVar = this.zzg;
        if (zzbwnVar == this) {
            zzbwnVar = null;
        }
        zzbwn zzbwnVar2 = this.zzh;
        Intrinsics.e(zzbwnVar2);
        zzbwnVar2.zzg = this.zzg;
        zzbwn zzbwnVar3 = this.zzg;
        Intrinsics.e(zzbwnVar3);
        zzbwnVar3.zzh = this.zzh;
        this.zzg = null;
        this.zzh = null;
        return zzbwnVar;
    }

    public final zzbwn zzb(zzbwn segment) {
        Intrinsics.h(segment, "segment");
        segment.zzh = this;
        segment.zzg = this.zzg;
        zzbwn zzbwnVar = this.zzg;
        Intrinsics.e(zzbwnVar);
        zzbwnVar.zzh = segment;
        this.zzg = segment;
        return segment;
    }

    public final zzbwn zzc() {
        this.zze = true;
        return new zzbwn(this.zzb, this.zzc, this.zzd, true, false);
    }

    public final zzbwn zzd(int i10) {
        zzbwn zzbwnVarZza;
        if (i10 > this.zzd - this.zzc) {
            throw new IllegalArgumentException("byteCount out of range");
        }
        if (i10 >= 1024) {
            zzbwnVarZza = zzc();
        } else {
            byte[] bArr = this.zzb;
            zzbwnVarZza = zzbwo.zza();
            byte[] bArr2 = zzbwnVarZza.zzb;
            int i11 = this.zzc;
            ArraysKt.m(bArr, bArr2, 0, i11, i11 + i10, 2, null);
        }
        zzbwnVarZza.zzd = zzbwnVarZza.zzc + i10;
        this.zzc += i10;
        zzbwn zzbwnVar = this.zzh;
        Intrinsics.e(zzbwnVar);
        zzbwnVar.zzb(zzbwnVarZza);
        return zzbwnVarZza;
    }

    public final void zze(zzbwn sink, int i10) {
        Intrinsics.h(sink, "sink");
        if (!sink.zzf) {
            throw new IllegalStateException("only owner can write");
        }
        int i11 = sink.zzd;
        int i12 = i11 + i10;
        if (i12 > 8192) {
            if (sink.zze) {
                throw new IllegalArgumentException();
            }
            int i13 = sink.zzc;
            if (i12 - i13 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.zzb;
            ArraysKt.m(bArr, bArr, 0, i13, i11, 2, null);
            i11 = sink.zzd - sink.zzc;
            sink.zzd = i11;
            sink.zzc = 0;
        }
        byte[] bArr2 = this.zzb;
        byte[] bArr3 = sink.zzb;
        int i14 = this.zzc;
        ArraysKt.h(bArr2, bArr3, i11, i14, i14 + i10);
        sink.zzd += i10;
        this.zzc += i10;
    }

    public zzbwn(byte[] data, int i10, int i11, boolean z10, boolean z11) {
        Intrinsics.h(data, "data");
        this.zzb = data;
        this.zzc = i10;
        this.zzd = i11;
        this.zze = z10;
        this.zzf = false;
    }
}
