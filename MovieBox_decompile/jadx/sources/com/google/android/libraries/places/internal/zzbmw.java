package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Locale;

public final class zzbmw implements zzbis {
    private final zzbmv zza;
    private zzbra zzc;
    private final zzbrb zzg;
    private final zzbqo zzh;
    private boolean zzi;
    private int zzj;
    private long zzl;
    private int zzb = -1;
    private zzazc zzd = zzaza.zza;
    private final zzbmu zze = new zzbmu(this, null);
    private final ByteBuffer zzf = ByteBuffer.allocate(5);
    private int zzk = -1;

    public zzbmw(zzbmv zzbmvVar, zzbrb zzbrbVar, zzbqo zzbqoVar) {
        this.zza = zzbmvVar;
        this.zzg = zzbrbVar;
        this.zzh = zzbqoVar;
    }

    private final void zzi(boolean z10, boolean z11) {
        zzbra zzbraVar = this.zzc;
        this.zzc = null;
        this.zza.zzi(zzbraVar, z10, z11, this.zzj);
        this.zzj = 0;
    }

    private final void zzj(zzbms zzbmsVar, boolean z10) {
        int iZza = zzbms.zza(zzbmsVar);
        int i10 = this.zzb;
        if (i10 >= 0 && iZza > i10) {
            throw new zzbdq(zzbdo.zzj.zzg(String.format(Locale.US, "message too large %d > %d", Integer.valueOf(iZza), Integer.valueOf(this.zzb))), null);
        }
        this.zzf.clear();
        this.zzf.put(z10 ? (byte) 1 : (byte) 0).putInt(iZza);
        zzbrb zzbrbVar = this.zzg;
        ByteBuffer byteBuffer = this.zzf;
        zzbra zzbraVarZza = zzbrbVar.zza(5);
        zzbraVarZza.zzd(byteBuffer.array(), 0, byteBuffer.position());
        if (iZza == 0) {
            this.zzc = zzbraVarZza;
            return;
        }
        this.zza.zzi(zzbraVarZza, false, false, this.zzj - 1);
        this.zzj = 1;
        List list = zzbmsVar.zzb;
        for (int i11 = 0; i11 < list.size() - 1; i11++) {
            this.zza.zzi((zzbra) list.get(i11), false, false, 0);
        }
        this.zzc = (zzbra) list.get(list.size() - 1);
        this.zzl = iZza;
    }

    public final void zzk(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            zzbra zzbraVar = this.zzc;
            if (zzbraVar != null && zzbraVar.zzb() == 0) {
                zzi(false, false);
            }
            if (this.zzc == null) {
                this.zzc = this.zzg.zza(i11);
            }
            int iMin = Math.min(i11, this.zzc.zzb());
            this.zzc.zzd(bArr, i10, iMin);
            i10 += iMin;
            i11 -= iMin;
        }
    }

    @Override
    public final zzbis zza(zzazc zzazcVar) {
        this.zzd = zzazcVar;
        return this;
    }

    @Override
    public final void zzb() {
        if (this.zzi) {
            return;
        }
        this.zzi = true;
        zzbra zzbraVar = this.zzc;
        if (zzbraVar != null && zzbraVar.zza() == 0) {
            this.zzc = null;
        }
        zzi(true, true);
    }

    @Override
    public final void zzc() {
        zzbra zzbraVar = this.zzc;
        if (zzbraVar == null || zzbraVar.zza() <= 0) {
            return;
        }
        zzi(false, true);
    }

    @Override
    public final void zzd(int i10) {
        zzmt.zzp(this.zzb == -1, "max size already set");
        this.zzb = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void zze(InputStream inputStream) {
        int iZza;
        if (this.zzi) {
            throw new IllegalStateException("Framer already closed");
        }
        this.zzj++;
        int i10 = this.zzk + 1;
        this.zzk = i10;
        this.zzl = 0L;
        this.zzh.zzi(i10);
        zzazc zzazcVar = this.zzd;
        zzazb zzazbVar = zzaza.zza;
        zzbmr zzbmrVar = null;
        try {
            int iAvailable = inputStream.available();
            if (iAvailable != 0 && zzazcVar != zzazbVar) {
                zzbms zzbmsVar = new zzbms(this, zzbmrVar);
                try {
                    iZza = inputStream.zza(zzbmsVar);
                    zzbmsVar.close();
                    int i11 = this.zzb;
                    if (i11 >= 0 && iZza > i11) {
                        throw new zzbdq(zzbdo.zzj.zzg(String.format(Locale.US, "message too large %d > %d", Integer.valueOf(iZza), Integer.valueOf(this.zzb))), null);
                    }
                    zzj(zzbmsVar, true);
                } catch (Throwable th2) {
                    zzbmsVar.close();
                    throw th2;
                }
            } else if (iAvailable != -1) {
                this.zzl = iAvailable;
                int i12 = this.zzb;
                if (i12 >= 0 && iAvailable > i12) {
                    throw new zzbdq(zzbdo.zzj.zzg(String.format(Locale.US, "message too large %d > %d", Integer.valueOf(iAvailable), Integer.valueOf(this.zzb))), null);
                }
                this.zzf.clear();
                this.zzf.put((byte) 0).putInt(iAvailable);
                if (this.zzc == null) {
                    this.zzc = this.zzg.zza(this.zzf.position() + iAvailable);
                }
                zzk(this.zzf.array(), 0, this.zzf.position());
                iZza = inputStream.zza(this.zze);
            } else {
                zzbms zzbmsVar2 = new zzbms(this, zzbmrVar);
                iZza = inputStream.zza(zzbmsVar2);
                zzj(zzbmsVar2, false);
            }
            if (iAvailable != -1 && iZza != iAvailable) {
                throw new zzbdq(zzbdo.zzo.zzg(String.format("Message length inaccurate %s != %s", Integer.valueOf(iZza), Integer.valueOf(iAvailable))), null);
            }
            long j10 = iZza;
            this.zzh.zzk(j10);
            this.zzh.zzl(this.zzl);
            this.zzh.zzj(this.zzk, this.zzl, j10);
        } catch (zzbdq e10) {
            throw e10;
        } catch (IOException e11) {
            throw new zzbdq(zzbdo.zzo.zzg("Failed to frame message").zzf(e11), null);
        } catch (RuntimeException e12) {
            throw new zzbdq(zzbdo.zzo.zzg("Failed to frame message").zzf(e12), null);
        }
    }

    @Override
    public final boolean zzf() {
        return this.zzi;
    }
}
