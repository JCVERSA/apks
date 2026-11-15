package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import defpackage.erj;
import defpackage.tkj;

public final class zztc extends Exception {

    @Nullable
    public final String zza;
    public final boolean zzb;

    @Nullable
    public final tkj zzc;

    @Nullable
    public final String zzd;

    public zztc(erj erjVar, @Nullable Throwable th, boolean z, int i) {
        this("Decoder init failed: [" + i + "], " + erjVar.toString(), th, erjVar.o, false, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_" + Math.abs(i), null);
    }

    public static zztc zza(zztc zztcVar, zztc zztcVar2) {
        return new zztc(zztcVar.getMessage(), zztcVar.getCause(), zztcVar.zza, false, zztcVar.zzc, zztcVar.zzd, zztcVar2);
    }

    public zztc(erj erjVar, @Nullable Throwable th, boolean z, tkj tkjVar) {
        this("Decoder init failed: " + tkjVar.a + ", " + erjVar.toString(), th, erjVar.o, false, tkjVar, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null, null);
    }

    private zztc(@Nullable String str, @Nullable Throwable th, @Nullable String str2, boolean z, @Nullable tkj tkjVar, @Nullable String str3, @Nullable zztc zztcVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = tkjVar;
        this.zzd = str3;
    }
}
