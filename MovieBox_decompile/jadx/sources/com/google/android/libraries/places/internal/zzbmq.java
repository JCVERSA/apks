package com.google.android.libraries.places.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

public final class zzbmq implements Closeable, zzbgj {
    private zzbmm zza;
    private int zzb;
    private final zzbqo zzc;
    private final zzbqz zzd;
    private zzazo zze;
    private boolean zzg;
    private zzbge zzh;
    private long zzj;
    private int zzm;
    private int zzp = 1;
    private int zzf = 5;
    private zzbge zzi = new zzbge();
    private boolean zzk = false;
    private int zzl = -1;
    private boolean zzn = false;
    private volatile boolean zzo = false;

    public zzbmq(zzbmm zzbmmVar, zzazo zzazoVar, int i10, zzbqo zzbqoVar, zzbqz zzbqzVar) {
        this.zza = zzbmmVar;
        this.zze = zzazoVar;
        this.zzb = i10;
        this.zzc = zzbqoVar;
        this.zzd = zzbqzVar;
    }

    private final void zzh() {
        int i10;
        InputStream zzbnwVar;
        if (this.zzk) {
            return;
        }
        this.zzk = true;
        loop0: while (this.zzj > 0) {
            try {
                try {
                    if (this.zzh == null) {
                        this.zzh = new zzbge();
                    }
                    i10 = 0;
                    while (true) {
                        try {
                            int iZzf = this.zzf - this.zzh.zzf();
                            if (iZzf > 0) {
                                if (this.zzi.zzf() == 0) {
                                    if (i10 <= 0) {
                                        break loop0;
                                    }
                                    this.zza.zzE(i10);
                                    if (this.zzp != 2) {
                                        break loop0;
                                    }
                                    this.zzc.zzh(i10);
                                    this.zzm += i10;
                                    break loop0;
                                }
                                int iMin = Math.min(iZzf, this.zzi.zzf());
                                i10 += iMin;
                                this.zzh.zzh(this.zzi.zzg(iMin));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (i10 > 0) {
                                this.zza.zzE(i10);
                                if (this.zzp == 2) {
                                    this.zzc.zzh(i10);
                                    this.zzm += i10;
                                }
                            }
                            throw th;
                        }
                    }
                    if (i10 > 0) {
                        this.zza.zzE(i10);
                        if (this.zzp == 2) {
                            this.zzc.zzh(i10);
                            this.zzm += i10;
                        }
                    }
                    int i11 = this.zzp;
                    int i12 = i11 - 1;
                    if (i11 == 0) {
                        throw null;
                    }
                    if (i12 == 0) {
                        int iZze = this.zzh.zze();
                        if ((iZze & 254) != 0) {
                            throw new zzbdq(zzbdo.zzo.zzg("gRPC frame header malformed: reserved bits not zero"), null);
                        }
                        this.zzg = 1 == (iZze & 1);
                        zzbge zzbgeVar = this.zzh;
                        zzbgeVar.zza(4);
                        int iZze2 = zzbgeVar.zze() | (zzbgeVar.zze() << 24) | (zzbgeVar.zze() << 16) | (zzbgeVar.zze() << 8);
                        this.zzf = iZze2;
                        if (iZze2 < 0 || iZze2 > this.zzb) {
                            throw new zzbdq(zzbdo.zzj.zzg(String.format(Locale.US, "gRPC message exceeds maximum size %d: %d", Integer.valueOf(this.zzb), Integer.valueOf(this.zzf))), null);
                        }
                        int i13 = this.zzl + 1;
                        this.zzl = i13;
                        this.zzc.zze(i13);
                        this.zzd.zzc();
                        this.zzp = 2;
                    } else {
                        if (i12 != 1) {
                            throw new AssertionError("Invalid state: " + (i11 != 1 ? "BODY" : "HEADER"));
                        }
                        this.zzc.zzf(this.zzl, this.zzm, -1L);
                        this.zzm = 0;
                        if (this.zzg) {
                            zzazo zzazoVar = this.zze;
                            if (zzazoVar == zzaza.zza) {
                                throw new zzbdq(zzbdo.zzo.zzg("Can't decode compressed gRPC message as compression not configured"), null);
                            }
                            try {
                                zzbnwVar = new zzbmp(zzazoVar.zza(new zzbnw(this.zzh)), this.zzb, this.zzc);
                            } catch (IOException e10) {
                                throw new RuntimeException(e10);
                            }
                        } else {
                            this.zzc.zzg(this.zzh.zzf());
                            zzbnwVar = new zzbnw(this.zzh);
                        }
                        this.zzh = null;
                        this.zza.zzr(new zzbmo(zzbnwVar, null));
                        this.zzp = 1;
                        this.zzf = 5;
                        this.zzj--;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    i10 = 0;
                }
            } catch (Throwable th4) {
                this.zzk = false;
                throw th4;
            }
        }
        if (this.zzn && zzi()) {
            close();
        }
        this.zzk = false;
    }

    private final boolean zzi() {
        return this.zzi.zzf() == 0;
    }

    @Override
    public final void close() {
        if (zzg()) {
            return;
        }
        zzbge zzbgeVar = this.zzh;
        boolean z10 = false;
        if (zzbgeVar != null && zzbgeVar.zzf() > 0) {
            z10 = true;
        }
        try {
            zzbge zzbgeVar2 = this.zzi;
            if (zzbgeVar2 != null) {
                zzbgeVar2.close();
            }
            zzbge zzbgeVar3 = this.zzh;
            if (zzbgeVar3 != null) {
                zzbgeVar3.close();
            }
            this.zzi = null;
            this.zzh = null;
            this.zza.zze(z10);
        } catch (Throwable th2) {
            this.zzi = null;
            this.zzh = null;
            throw th2;
        }
    }

    @Override
    public final void zza() {
        if (zzg()) {
            return;
        }
        if (zzi()) {
            close();
        } else {
            this.zzn = true;
        }
    }

    @Override
    public final void zzb(zzbnv zzbnvVar) throws Throwable {
        boolean z10 = true;
        try {
            if (!zzg() && !this.zzn) {
                this.zzi.zzh(zzbnvVar);
                try {
                    zzh();
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    z10 = false;
                    if (z10) {
                        zzbnvVar.close();
                    }
                    throw th;
                }
            }
            zzbnvVar.close();
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public final void zzc(int i10) {
        if (zzg()) {
            return;
        }
        this.zzj += 2;
        zzh();
    }

    @Override
    public final void zzd(zzazo zzazoVar) {
        this.zze = zzazoVar;
    }

    @Override
    public final void zze(int i10) {
        this.zzb = i10;
    }

    final void zzf(zzbmm zzbmmVar) {
        this.zza = zzbmmVar;
    }

    public final boolean zzg() {
        return this.zzi == null;
    }
}
