package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;

final class zzbse implements Runnable, zzbtq {
    final zzbtr zza;
    final zzbsf zzc;
    private final zzbsi zzd = new zzbsi(Level.FINE, zzbsf.class);
    boolean zzb = true;

    zzbse(zzbsf zzbsfVar, zzbtr zzbtrVar) {
        this.zzc = zzbsfVar;
        this.zza = zzbtrVar;
    }

    @Override
    public final void run() {
        zzbdo zzbdoVarZzg;
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("OkHttpClientTransport");
        while (this.zza.zza(this)) {
            try {
                zzbsf zzbsfVar = this.zzc;
                if (zzbsfVar.zzK != null) {
                    zzbsfVar.zzK.zza();
                }
            } catch (Throwable th2) {
                try {
                    this.zzc.zzaa(0, zzbtp.PROTOCOL_ERROR, zzbdo.zzo.zzg("error in frame handler").zzf(th2));
                } catch (Throwable th3) {
                    try {
                        this.zza.close();
                    } catch (IOException e10) {
                        zzbsf.zzd.logp(Level.INFO, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "run", "Exception closing frame reader", (Throwable) e10);
                    } catch (RuntimeException e11) {
                        if (!"bio == null".equals(e11.getMessage())) {
                            throw e11;
                        }
                    }
                    this.zzc.zzl.zze();
                    Thread.currentThread().setName(name);
                    throw th3;
                }
            }
        }
        synchronized (this.zzc.zzo) {
            zzbdoVarZzg = this.zzc.zzz;
        }
        if (zzbdoVarZzg == null) {
            zzbdoVarZzg = zzbdo.zzp.zzg("End of stream or IOException");
        }
        this.zzc.zzaa(0, zzbtp.INTERNAL_ERROR, zzbdoVarZzg);
        try {
            this.zza.close();
        } catch (IOException e12) {
            zzbsf.zzd.logp(Level.INFO, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "run", "Exception closing frame reader", (Throwable) e12);
        } catch (RuntimeException e13) {
            if (!"bio == null".equals(e13.getMessage())) {
                throw e13;
            }
        }
        this.zzc.zzl.zze();
        Thread.currentThread().setName(name);
    }

    @Override
    public final void zza(boolean z10, int i10, zzbwd zzbwdVar, int i11, int i12) throws IOException {
        this.zzd.zza(1, i10, ((zzbwl) zzbwdVar).zzb, i11, z10);
        zzbry zzbryVarZzr = this.zzc.zzr(i10);
        if (zzbryVarZzr != null) {
            long j10 = i11;
            zzbwdVar.zzD(j10);
            zzbwb zzbwbVar = new zzbwb();
            zzbwbVar.zzn(((zzbwl) zzbwdVar).zzb, j10);
            zzbryVarZzr.zzD().zzI();
            int i13 = zzbvr.zza;
            synchronized (this.zzc.zzo) {
                zzbryVarZzr.zzD().zzO(zzbwbVar, z10, i12 - i11);
            }
        } else {
            if (!this.zzc.zzU(i10)) {
                zzbsf zzbsfVar = this.zzc;
                zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
                zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received data for unknown stream: " + i10));
                return;
            }
            synchronized (this.zzc.zzo) {
                this.zzc.zzm.zzc(i10, zzbtp.STREAM_CLOSED);
            }
            zzbwdVar.zzF(i11);
        }
        this.zzc.zzw += i12;
        zzbsf zzbsfVar2 = this.zzc;
        if (zzbsfVar2.zzw >= zzbsfVar2.zzj * 0.5f) {
            synchronized (zzbsfVar2.zzo) {
                zzbsf zzbsfVar3 = this.zzc;
                zzbsfVar3.zzm.zzk(0, zzbsfVar3.zzw);
            }
            this.zzc.zzw = 0;
        }
    }

    @Override
    public final void zzb(int i10, zzbtp zzbtpVar, zzbwf zzbwfVar) {
        this.zzd.zzb(1, i10, zzbtpVar, zzbwfVar);
        if (zzbtpVar == zzbtp.ENHANCE_YOUR_CALM) {
            String strZzf = zzbwfVar.zzf();
            zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "goAway", String.format("%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s", this, strZzf));
            if ("too_many_pings".equals(strZzf)) {
                ((zzbrs) this.zzc.zzL).zza.zza();
            }
        }
        zzbdo zzbdoVarZzc = zzbjb.zza(zzbtpVar.zzs).zzc("Received Goaway");
        if (zzbwfVar.zzc() > 0) {
            zzbdoVarZzc = zzbdoVarZzc.zzc(zzbwfVar.zzf());
        }
        this.zzc.zzaa(i10, null, zzbdoVarZzc);
    }

    @Override
    public final void zzc(boolean z10, int i10, int i11) {
        zzbjh zzbjhVar;
        long j10 = (((long) i10) << 32) | (((long) i11) & 4294967295L);
        this.zzd.zzd(1, j10);
        if (!z10) {
            synchronized (this.zzc.zzo) {
                this.zzc.zzm.zzb(true, i10, i11);
            }
            return;
        }
        synchronized (this.zzc.zzo) {
            try {
                zzbsf zzbsfVar = this.zzc;
                zzbjhVar = null;
                if (zzbsfVar.zzB == null) {
                    zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "ping", "Received unexpected ping ack. No ping outstanding");
                } else if (zzbsfVar.zzB.zza() == j10) {
                    zzbsf zzbsfVar2 = this.zzc;
                    zzbjh zzbjhVar2 = zzbsfVar2.zzB;
                    zzbsfVar2.zzB = null;
                    zzbjhVar = zzbjhVar2;
                } else {
                    zzbsf.zzd.logp(Level.WARNING, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler", "ping", String.format(Locale.US, "Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(this.zzc.zzB.zza()), Long.valueOf(j10)));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (zzbjhVar != null) {
            zzbjhVar.zzc();
        }
    }

    @Override
    public final void zzd(int i10, int i11, List list) throws IOException {
        this.zzd.zzf(1, i10, i11, list);
        synchronized (this.zzc.zzo) {
            this.zzc.zzm.zzc(i10, zzbtp.PROTOCOL_ERROR);
        }
    }

    @Override
    public final void zze(int i10, zzbtp zzbtpVar) {
        boolean z10 = true;
        this.zzd.zzg(1, i10, zzbtpVar);
        zzbdo zzbdoVarZzc = zzbsf.zzm(zzbtpVar).zzc("Rst Stream");
        if (zzbdoVarZzc.zza() != zzbdj.CANCELLED && zzbdoVarZzc.zza() != zzbdj.DEADLINE_EXCEEDED) {
            z10 = false;
        }
        boolean z11 = z10;
        synchronized (this.zzc.zzo) {
            try {
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i10));
                if (zzbryVar != null) {
                    zzbryVar.zzD().zzI();
                    int i11 = zzbvr.zza;
                    this.zzc.zzP(i10, zzbdoVarZzc, zzbtpVar == zzbtp.REFUSED_STREAM ? zzbfs.REFUSED : zzbfs.PROCESSED, z11, null, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void zzf(boolean z10, zzbue zzbueVar) {
        boolean zZzh;
        this.zzd.zzh(1, zzbueVar);
        synchronized (this.zzc.zzo) {
            try {
                if (zzbueVar.zzf(4)) {
                    this.zzc.zzH = zzbueVar.zza(4);
                }
                if (zzbueVar.zzf(7)) {
                    zZzh = this.zzc.zzn.zzh(zzbueVar.zza(7));
                } else {
                    zZzh = false;
                }
                if (this.zzb) {
                    zzbsf zzbsfVar = this.zzc;
                    zzbmk zzbmkVar = zzbsfVar.zzl;
                    zzaye zzayeVar = zzbsfVar.zzy;
                    zzbmkVar.zza(zzayeVar);
                    zzbsfVar.zzy = zzayeVar;
                    this.zzc.zzl.zzc();
                    this.zzb = false;
                }
                this.zzc.zzm.zza(zzbueVar);
                if (zZzh) {
                    this.zzc.zzn.zzg();
                }
                this.zzc.zzad();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0050  */
    /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0050, please report this as an issue */
    @Override
    public final void zzg(int i10, long j10) {
        boolean z10 = true;
        this.zzd.zzj(1, i10, j10);
        synchronized (this.zzc.zzo) {
            try {
                if (i10 == 0) {
                    this.zzc.zzn.zza(null, (int) j10);
                    return;
                }
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i10));
                if (zzbryVar == null) {
                    if (this.zzc.zzU(i10)) {
                    }
                    if (z10) {
                        zzbsf zzbsfVar = this.zzc;
                        zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
                        zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received window_update for unknown stream: " + i10));
                    }
                }
                this.zzc.zzn.zza(zzbryVar.zzD().zzH(), (int) j10);
                z10 = false;
                if (z10) {
                    zzbsf zzbsfVar2 = this.zzc;
                    zzbtp zzbtpVar2 = zzbtp.PROTOCOL_ERROR;
                    zzbsfVar2.zzaa(0, zzbtpVar2, zzbsf.zzm(zzbtpVar2).zzc("Received window_update for unknown stream: " + i10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void zzh(boolean z10, boolean z11, int i10, int i11, List list, int i12) {
        boolean z12 = true;
        this.zzd.zzc(1, i10, list, z11);
        zzbdo zzbdoVarZzg = null;
        if (this.zzc.zzM != Integer.MAX_VALUE) {
            long jZzc = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                zzbtt zzbttVar = (zzbtt) list.get(i13);
                jZzc += (long) (zzbttVar.zzh.zzc() + 32 + zzbttVar.zzi.zzc());
            }
            int iMin = (int) Math.min(jZzc, 2147483647L);
            if (iMin > this.zzc.zzM) {
                zzbdoVarZzg = zzbdo.zzj.zzg(String.format(Locale.US, "Response %s metadata larger than %d: %d", true != z11 ? "header" : "trailer", Integer.valueOf(this.zzc.zzM), Integer.valueOf(iMin)));
            }
        }
        synchronized (this.zzc.zzo) {
            try {
                zzbry zzbryVar = (zzbry) this.zzc.zzr.get(Integer.valueOf(i10));
                if (zzbryVar == null) {
                    if (this.zzc.zzU(i10)) {
                        this.zzc.zzm.zzc(i10, zzbtp.STREAM_CLOSED);
                    }
                } else if (zzbdoVarZzg == null) {
                    zzbryVar.zzD().zzI();
                    int i14 = zzbvr.zza;
                    zzbryVar.zzD().zzP(list, z11);
                } else {
                    if (!z11) {
                        this.zzc.zzm.zzc(i10, zzbtp.CANCEL);
                    }
                    zzbryVar.zzD().zzj(zzbdoVarZzg, zzbfs.PROCESSED, false, new zzbcf());
                }
                z12 = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z12) {
            zzbsf zzbsfVar = this.zzc;
            zzbtp zzbtpVar = zzbtp.PROTOCOL_ERROR;
            zzbsfVar.zzaa(0, zzbtpVar, zzbsf.zzm(zzbtpVar).zzc("Received header for unknown stream: " + i10));
        }
    }
}
