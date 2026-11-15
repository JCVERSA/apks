package com.google.android.libraries.places.internal;

final class zzbry extends zzbef {
    private static final zzbwb zza = new zzbwb();
    private final zzbcl zzb;
    private final String zzc;
    private final zzbqo zzd;
    private final String zze;
    private final zzbrx zzf;
    private final zzbrw zzg;
    private final zzaye zzh;
    private final boolean zzi;

    zzbry(zzbcl zzbclVar, zzbcf zzbcfVar, zzbrk zzbrkVar, zzbsf zzbsfVar, zzbsu zzbsuVar, Object obj, int i10, int i11, String str, String str2, zzbqo zzbqoVar, zzbqz zzbqzVar, zzayj zzayjVar, boolean z10) {
        super(new zzbso(), zzbqoVar, zzbqzVar, zzbcfVar, zzayjVar, false);
        this.zzg = new zzbrw(this);
        this.zzi = false;
        this.zzd = zzbqoVar;
        this.zzb = zzbclVar;
        this.zze = str;
        this.zzc = str2;
        this.zzh = zzbsfVar.zze();
        this.zzf = new zzbrx(this, i10, zzbqoVar, obj, zzbrkVar, zzbsuVar, zzbsfVar, i11, zzbclVar.zzf(), zzayjVar);
    }

    protected final zzbrx zzD() {
        return this.zzf;
    }

    final boolean zzI() {
        return false;
    }

    @Override
    protected final zzbec zza() {
        return this.zzg;
    }

    @Override
    public final zzaye zzam() {
        return this.zzh;
    }

    @Override
    protected final zzbee zzb() {
        return this.zzf;
    }

    @Override
    protected final zzbei zzc() {
        return this.zzf;
    }

    public final zzbcj zzx() {
        return this.zzb.zzb();
    }
}
