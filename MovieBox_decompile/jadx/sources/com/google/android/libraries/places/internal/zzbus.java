package com.google.android.libraries.places.internal;

final class zzbus extends zzajp {
    private final zzayo zzc;

    zzbus(zzayo zzayoVar) {
        this.zzc = zzayoVar;
    }

    @Override
    protected final String zze() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("clientCall", this.zzc);
        return zzmmVarZzb.toString();
    }

    @Override
    protected final void zzk() {
        this.zzc.zza("GrpcFuture was cancelled", null);
    }

    @Override
    protected final boolean zzl(Object obj) {
        return super.zzl(obj);
    }

    @Override
    protected final boolean zzm(Throwable th2) {
        return super.zzm(th2);
    }
}
