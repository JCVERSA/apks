package com.google.android.libraries.places.internal;

import java.net.SocketAddress;
import java.util.Collections;
import java.util.List;

final class zzbnd {
    private List zza;
    private int zzb;
    private int zzc;

    public zzbnd(List list) {
        this.zza = list == null ? Collections.emptyList() : list;
    }

    public final int zza() {
        List list = this.zza;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final zzaye zzb() {
        if (zzg()) {
            return ((zzazs) this.zza.get(this.zzb)).zza();
        }
        throw new IllegalStateException("Index is off the end of the address group list");
    }

    public final SocketAddress zzc() {
        if (zzg()) {
            return (SocketAddress) ((zzazs) this.zza.get(this.zzb)).zzb().get(this.zzc);
        }
        throw new IllegalStateException("Index is past the end of the address group list");
    }

    public final void zzd() {
        this.zzb = 0;
        this.zzc = 0;
    }

    public final void zze(zznx zznxVar) {
        List listEmptyList = zznxVar;
        if (zznxVar == null) {
            listEmptyList = Collections.emptyList();
        }
        this.zza = listEmptyList;
        zzd();
    }

    public final boolean zzf() {
        if (!zzg()) {
            return false;
        }
        zzazs zzazsVar = (zzazs) this.zza.get(this.zzb);
        int i10 = this.zzc + 1;
        this.zzc = i10;
        if (i10 < zzazsVar.zzb().size()) {
            return true;
        }
        int i11 = this.zzb + 1;
        this.zzb = i11;
        this.zzc = 0;
        return i11 < this.zza.size();
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
