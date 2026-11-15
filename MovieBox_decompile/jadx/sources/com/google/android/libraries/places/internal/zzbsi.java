package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.permission.PermissionConstant;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class zzbsi {
    private final Logger zza;
    private final Level zzb;

    zzbsi(Level level, Class cls) {
        Logger logger = Logger.getLogger(cls.getName());
        zzmt.zzc(level, PermissionConstant.level);
        this.zzb = level;
        zzmt.zzc(logger, "logger");
        this.zza = logger;
    }

    private static String zzk(zzbwb zzbwbVar) {
        return zzbwbVar.zzg() <= 64 ? zzbwbVar.zzz().zze() : String.valueOf(zzbwbVar.zzA((int) Math.min(zzbwbVar.zzg(), 64L)).zze()).concat("...");
    }

    private final boolean zzl() {
        return this.zza.isLoggable(this.zzb);
    }

    final void zza(int i10, int i11, zzbwb zzbwbVar, int i12, boolean z10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logData", zzbsg.zza(i10) + " DATA: streamId=" + i11 + " endStream=" + z10 + " length=" + i12 + " bytes=" + zzk(zzbwbVar));
        }
    }

    final void zzb(int i10, int i11, zzbtp zzbtpVar, zzbwf zzbwfVar) {
        if (zzl()) {
            Logger logger = this.zza;
            Level level = this.zzb;
            String strZza = zzbsg.zza(i10);
            String strValueOf = String.valueOf(zzbtpVar);
            int iZzc = zzbwfVar.zzc();
            zzbwb zzbwbVar = new zzbwb();
            zzbwbVar.zzk(zzbwfVar);
            logger.logp(level, "io.grpc.okhttp.OkHttpFrameLogger", "logGoAway", strZza + " GO_AWAY: lastStreamId=" + i11 + " errorCode=" + strValueOf + " length=" + iZzc + " bytes=" + zzk(zzbwbVar));
        }
    }

    final void zzc(int i10, int i11, List list, boolean z10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logHeaders", "INBOUND HEADERS: streamId=" + i11 + " headers=" + list.toString() + " endStream=" + z10);
        }
    }

    final void zzd(int i10, long j10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPing", zzbsg.zza(i10) + " PING: ack=false bytes=" + j10);
        }
    }

    final void zze(int i10, long j10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPingAck", zzbsg.zza(2) + " PING: ack=true bytes=" + j10);
        }
    }

    final void zzf(int i10, int i11, int i12, List list) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logPushPromise", "INBOUND PUSH_PROMISE: streamId=" + i11 + " promisedStreamId=" + i12 + " headers=" + list.toString());
        }
    }

    final void zzg(int i10, int i11, zzbtp zzbtpVar) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logRstStream", zzbsg.zza(i10) + " RST_STREAM: streamId=" + i11 + " errorCode=" + String.valueOf(zzbtpVar));
        }
    }

    final void zzh(int i10, zzbue zzbueVar) {
        if (zzl()) {
            Logger logger = this.zza;
            Level level = this.zzb;
            String strZza = zzbsg.zza(i10);
            EnumMap enumMap = new EnumMap(zzbsh.class);
            for (zzbsh zzbshVar : zzbsh.values()) {
                if (zzbueVar.zzf(zzbshVar.zza())) {
                    enumMap.put(zzbshVar, Integer.valueOf(zzbueVar.zza(zzbshVar.zza())));
                }
            }
            logger.logp(level, "io.grpc.okhttp.OkHttpFrameLogger", "logSettings", strZza + " SETTINGS: ack=false settings=" + enumMap.toString());
        }
    }

    final void zzi(int i10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logSettingsAck", zzbsg.zza(2).concat(" SETTINGS: ack=true"));
        }
    }

    final void zzj(int i10, int i11, long j10) {
        if (zzl()) {
            this.zza.logp(this.zzb, "io.grpc.okhttp.OkHttpFrameLogger", "logWindowsUpdate", zzbsg.zza(i10) + " WINDOW_UPDATE: streamId=" + i11 + " windowSizeIncrement=" + j10);
        }
    }
}
