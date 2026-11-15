package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbwl implements zzbwd {

    @JvmField
    public final zzbws zza;

    @JvmField
    public final zzbwb zzb;

    @JvmField
    public boolean zzc;

    public zzbwl(zzbws source) {
        Intrinsics.h(source, "source");
        this.zza = source;
        this.zzb = new zzbwb();
    }

    @Override
    public final void close() throws IOException {
        if (this.zzc) {
            return;
        }
        this.zzc = true;
        this.zza.close();
        zzbwb zzbwbVar = this.zzb;
        zzbwbVar.zzF(zzbwbVar.zzg());
    }

    @Override
    public final boolean isOpen() {
        return !this.zzc;
    }

    @Override
    public final int read(ByteBuffer sink) {
        Intrinsics.h(sink, "sink");
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.zzb.read(sink);
    }

    public final String toString() {
        return "buffer(" + this.zza + ")";
    }

    @Override
    public final void zzD(long j10) throws EOFException {
        zzbwb zzbwbVar;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        do {
            zzbwbVar = this.zzb;
            if (zzbwbVar.zzg() >= j10) {
                return;
            }
        } while (this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        throw new EOFException(null);
    }

    @Override
    public final void zzF(long j10) throws EOFException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            zzbwb zzbwbVar = this.zzb;
            if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException(null);
            }
            long jMin = Math.min(j10, this.zzb.zzg());
            this.zzb.zzF(jMin);
            j10 -= jMin;
        }
    }

    @Override
    public final long zza(zzbwb sink, long j10) {
        Intrinsics.h(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() == 0 && this.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.zzb.zza(sink, Math.min(j10, this.zzb.zzg()));
    }

    @Override
    public final byte zzc() throws EOFException {
        zzD(1L);
        return this.zzb.zzc();
    }

    @Override
    public final int zze() throws EOFException {
        zzD(4L);
        return this.zzb.zze();
    }

    @Override
    public final zzbwf zzy(long j10) throws EOFException {
        zzD(j10);
        return this.zzb.zzy(j10);
    }
}
