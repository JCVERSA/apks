package com.google.android.libraries.places.internal;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;

final class zzbrx extends zzbjg implements zzbsp {
    final zzbry zza;
    private final int zzb;
    private final Object zzc;
    private List zzd;
    private final zzbwb zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private final zzbrk zzk;
    private final zzbsu zzl;
    private final zzbsf zzm;
    private boolean zzn;
    private final zzbvs zzo;
    private zzbsq zzp;
    private int zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbrx(zzbry zzbryVar, int i10, zzbqo zzbqoVar, Object obj, zzbrk zzbrkVar, zzbsu zzbsuVar, zzbsf zzbsfVar, int i11, String str, zzayj zzayjVar) {
        super(i10, zzbqoVar, zzbryVar.zze(), zzayjVar);
        this.zza = zzbryVar;
        this.zze = new zzbwb();
        this.zzf = false;
        this.zzg = false;
        this.zzh = false;
        this.zzn = true;
        this.zzq = -1;
        this.zzc = obj;
        this.zzk = zzbrkVar;
        this.zzl = zzbsuVar;
        this.zzm = zzbsfVar;
        this.zzi = i11;
        this.zzj = i11;
        this.zzb = i11;
        this.zzo = zzbvr.zzb(str);
    }

    static void zzL(zzbrx zzbrxVar, zzbwb zzbwbVar, boolean z10, boolean z11) {
        if (zzbrxVar.zzh) {
            return;
        }
        if (!zzbrxVar.zzn) {
            zzmt.zzp(zzbrxVar.zzq != -1, "streamId should be set");
            zzbrxVar.zzl.zze(z10, zzbrxVar.zzp, zzbwbVar, z11);
        } else {
            zzbrxVar.zze.zzn(zzbwbVar, (int) zzbwbVar.zzg());
            zzbrxVar.zzf |= z10;
            zzbrxVar.zzg |= z11;
        }
    }

    static void zzM(zzbrx zzbrxVar, zzbcf zzbcfVar, String str) {
        zzbry zzbryVar = zzbrxVar.zza;
        String str2 = zzbryVar.zze;
        String str3 = zzbryVar.zzc;
        boolean zZzT = zzbrxVar.zzm.zzT();
        zzmt.zzc(zzbcfVar, "headers");
        zzmt.zzc(str2, "authority");
        zzbcfVar.zzd(zzbjd.zzh);
        zzbcfVar.zzd(zzbjd.zzi);
        zzbca zzbcaVar = zzbjd.zzj;
        zzbcfVar.zzd(zzbcaVar);
        ArrayList arrayList = new ArrayList(zzbar.zza(zzbcfVar) + 7);
        if (zZzT) {
            arrayList.add(zzbrm.zzb);
        } else {
            arrayList.add(zzbrm.zza);
        }
        arrayList.add(zzbrm.zzc);
        zzbwf zzbwfVar = zzbtt.zze;
        zzbwe zzbweVar = zzbwf.zza;
        arrayList.add(new zzbtt(zzbwfVar, zzbwe.zza(str2)));
        arrayList.add(new zzbtt(zzbtt.zzc, zzbwe.zza(str)));
        arrayList.add(new zzbtt(zzbcaVar.zzd(), str3));
        arrayList.add(zzbrm.zze);
        arrayList.add(zzbrm.zzf);
        byte[][] bArrZza = zzbqu.zza(zzbcfVar);
        for (int i10 = 0; i10 < bArrZza.length; i10 += 2) {
            zzbwf zzbwfVarZzb = zzbwe.zzb(bArrZza[i10]);
            if (zzbwfVarZzb.zzn().length != 0 && zzbwfVarZzb.zzn()[0] != 58) {
                arrayList.add(new zzbtt(zzbwfVarZzb, zzbwe.zzb(bArrZza[i10 + 1])));
            }
        }
        zzbrxVar.zzd = arrayList;
        zzbrxVar.zzm.zzR(zzbrxVar.zza);
    }

    public final void zzQ(zzbdo zzbdoVar, boolean z10, zzbcf zzbcfVar) throws EOFException {
        if (this.zzh) {
            return;
        }
        this.zzh = true;
        if (!this.zzn) {
            this.zzm.zzP(this.zzq, zzbdoVar, zzbfs.PROCESSED, z10, zzbtp.CANCEL, zzbcfVar);
            return;
        }
        this.zzm.zzQ(this.zza);
        this.zzd = null;
        zzbwb zzbwbVar = this.zze;
        zzbwbVar.zzF(zzbwbVar.zzg());
        this.zzn = false;
        if (zzbcfVar == null) {
            zzbcfVar = new zzbcf();
        }
        zzj(zzbdoVar, zzbfs.PROCESSED, true, zzbcfVar);
    }

    @Override
    protected final void zzA(zzbdo zzbdoVar, boolean z10, zzbcf zzbcfVar) throws EOFException {
        zzQ(zzbdoVar, false, zzbcfVar);
    }

    @Override
    public final void zzE(int i10) {
        int i11 = this.zzj - i10;
        this.zzj = i11;
        int i12 = this.zzb;
        if (i11 <= i12 * 0.5f) {
            int i13 = i12 - i11;
            this.zzi += i13;
            this.zzj = i11 + i13;
            this.zzk.zzk(this.zzq, i13);
        }
    }

    @Override
    public final void zzF(Throwable th2) throws EOFException {
        zzQ(zzbdo.zze(th2), true, new zzbcf());
    }

    final int zzG() {
        return this.zzq;
    }

    final zzbsq zzH() {
        zzbsq zzbsqVar;
        synchronized (this.zzc) {
            zzbsqVar = this.zzp;
        }
        return zzbsqVar;
    }

    final zzbvs zzI() {
        return this.zzo;
    }

    public final void zzN(int i10) {
        zzmt.zzq(this.zzq == -1, "the stream has been started with id %s", i10);
        this.zzq = i10;
        this.zzp = this.zzl.zzc(this, i10);
        zzbrx zzbrxVar = this.zza.zzf;
        super.zzt();
        zzbrxVar.zzm().zzb();
        if (this.zzn) {
            this.zzk.zzj(false, false, this.zzq, 0, this.zzd);
            this.zza.zzd.zzd();
            this.zzd = null;
            if (this.zze.zzg() > 0) {
                this.zzl.zze(this.zzf, this.zzp, this.zze, this.zzg);
            }
            this.zzn = false;
        }
    }

    public final void zzO(zzbwb zzbwbVar, boolean z10, int i10) {
        int iZzg = this.zzi - (((int) zzbwbVar.zzg()) + i10);
        this.zzi = iZzg;
        this.zzj -= i10;
        if (iZzg >= 0) {
            super.zzB(new zzbsl(zzbwbVar), z10);
        } else {
            this.zzk.zzc(this.zzq, zzbtp.FLOW_CONTROL_ERROR);
            this.zzm.zzP(this.zzq, zzbdo.zzo.zzg("Received data size exceeded our receiving window size"), zzbfs.PROCESSED, false, null, null);
        }
    }

    public final void zzP(List list, boolean z10) {
        if (z10) {
            zzD(zzbsv.zzb(list));
        } else {
            zzC(zzbsv.zza(list));
        }
    }

    @Override
    public final void zze(boolean z10) {
        if (zzk()) {
            this.zzm.zzP(this.zzq, null, zzbfs.PROCESSED, false, null, null);
        } else {
            this.zzm.zzP(this.zzq, null, zzbfs.PROCESSED, false, zzbtp.CANCEL, null);
        }
        super.zze(z10);
    }

    @Override
    public final void zzz(Runnable runnable) {
        synchronized (this.zzc) {
            runnable.run();
        }
    }
}
