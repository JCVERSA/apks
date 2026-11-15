package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import defpackage.kfh;
import defpackage.tkj;

public class zzsy extends zzhl {
    public final int zza;

    public zzsy(Throwable th, @Nullable tkj tkjVar) {
        super("Decoder failed: ".concat(String.valueOf(tkjVar == null ? null : tkjVar.a)), th);
        boolean z = th instanceof MediaCodec.CodecException;
        if (z) {
            ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        int i = kfh.a;
        this.zza = z ? ((MediaCodec.CodecException) th).getErrorCode() : 0;
    }
}
