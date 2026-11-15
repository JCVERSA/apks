package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

final class zzbtx implements zzbws {
    int zza;
    byte zzb;
    int zzc;
    int zzd;
    short zze;
    private final zzbwd zzf;

    public zzbtx(zzbwd zzbwdVar) {
        this.zzf = zzbwdVar;
    }

    @Override
    public final long zza(zzbwb zzbwbVar, long j10) throws IOException {
        int i10;
        int iZze;
        do {
            int i11 = this.zzd;
            if (i11 == 0) {
                this.zzf.zzF(this.zze);
                this.zze = (short) 0;
                if ((this.zzb & 4) == 0) {
                    i10 = this.zzc;
                    int iZzb = zzbub.zzb(this.zzf);
                    this.zzd = iZzb;
                    this.zza = iZzb;
                    int iZzc = this.zzf.zzc() & 255;
                    this.zzb = (byte) (this.zzf.zzc() & 255);
                    Logger logger = zzbub.zza;
                    Level level = Level.FINE;
                    byte b10 = (byte) iZzc;
                    if (logger.isLoggable(level)) {
                        zzbub.zza.logp(level, "io.grpc.okhttp.internal.framed.Http2$ContinuationSource", "readContinuationHeader", zzbty.zza(true, this.zzc, this.zza, b10, this.zzb));
                    }
                    iZze = this.zzf.zze() & Integer.MAX_VALUE;
                    this.zzc = iZze;
                    if (b10 != 9) {
                        throw zzbub.zzi("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
                    }
                }
            } else {
                long jZza = this.zzf.zza(zzbwbVar, Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_URI, i11));
                if (jZza != -1) {
                    this.zzd -= (int) jZza;
                    return jZza;
                }
            }
            return -1L;
        } while (iZze == i10);
        throw zzbub.zzi("TYPE_CONTINUATION streamId changed", new Object[0]);
    }

    @Override
    public final void close() throws IOException {
    }
}
