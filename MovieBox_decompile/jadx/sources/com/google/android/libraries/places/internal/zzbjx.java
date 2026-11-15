package com.google.android.libraries.places.internal;

import java.net.SocketAddress;
import java.util.List;

final class zzbjx {
    private List zza;
    private int zzb;
    private int zzc;

    public zzbjx(List list) {
        this.zza = list;
    }

    public final zzaye zza() {
        return ((zzazs) this.zza.get(this.zzb)).zza();
    }

    public final SocketAddress zzb() {
        return (SocketAddress) ((zzazs) this.zza.get(this.zzb)).zzb().get(this.zzc);
    }

    public final void zzc() {
        zzazs zzazsVar = (zzazs) this.zza.get(this.zzb);
        int i10 = this.zzc + 1;
        this.zzc = i10;
        if (i10 >= zzazsVar.zzb().size()) {
            this.zzb++;
            this.zzc = 0;
        }
    }

    public final void zzd() {
        this.zzb = 0;
        this.zzc = 0;
    }

    public final void zze(List list) {
        this.zza = list;
        zzd();
    }

    public final boolean zzf() {
        return this.zzb == 0 && this.zzc == 0;
    }

    public final boolean zzg() {
        return this.zzb < this.zza.size();
    }

    public final boolean zzh(SocketAddress socketAddress) {
        for (int i10 = 0; i10 < this.zza.size(); i10++) {
            int iIndexOf = ((zzazs) this.zza.get(i10)).zzb().indexOf(socketAddress);
            if (iIndexOf != -1) {
                this.zzb = i10;
                this.zzc = iIndexOf;
                return true;
            }
        }
        return false;
    }
}
