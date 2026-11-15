package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class zzbwk implements zzbwc {

    @JvmField
    public final zzbwq zza;

    @JvmField
    public final zzbwb zzb;

    @JvmField
    public boolean zzc;

    public zzbwk(zzbwq sink) {
        Intrinsics.h(sink, "sink");
        this.zza = sink;
        this.zzb = new zzbwb();
    }

    @Override
    public final void close() throws Throwable {
        Throwable th2;
        if (this.zzc) {
            return;
        }
        try {
            zzbwb zzbwbVar = this.zzb;
            th2 = null;
            if (zzbwbVar.zzg() > 0) {
                this.zza.zzn(zzbwbVar, zzbwbVar.zzg());
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.zza.close();
        } catch (Throwable th4) {
            if (th2 == null) {
                th2 = th4;
            }
        }
        this.zzc = true;
        if (th2 != null) {
            throw th2;
        }
    }

    @Override
    public final void flush() throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        zzbwb zzbwbVar = this.zzb;
        if (zzbwbVar.zzg() > 0) {
            this.zza.zzn(zzbwbVar, zzbwbVar.zzg());
        }
        this.zza.flush();
    }

    @Override
    public final boolean isOpen() {
        return !this.zzc;
    }

    public final String toString() {
        return "buffer(" + this.zza + ")";
    }

    @Override
    public final int write(ByteBuffer source) throws IOException {
        Intrinsics.h(source, "source");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.zzb.write(source);
        zza();
        return iWrite;
    }

    public final zzbwc zza() throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        long jZzf = this.zzb.zzf();
        if (jZzf > 0) {
            this.zza.zzn(this.zzb, jZzf);
        }
        return this;
    }

    @Override
    public final void zzn(zzbwb source, long j10) throws IOException {
        Intrinsics.h(source, "source");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzn(source, j10);
        zza();
    }

    @Override
    public final zzbwc zzv(int i10) throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzm(i10);
        zza();
        return this;
    }

    @Override
    public final zzbwc zzw(int i10) throws IOException {
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzp(i10);
        zza();
        return this;
    }

    @Override
    public final zzbwc zzx(String string) throws IOException {
        Intrinsics.h(string, "string");
        if (this.zzc) {
            throw new IllegalStateException("closed");
        }
        this.zzb.zzs(string);
        zza();
        return this;
    }
}
