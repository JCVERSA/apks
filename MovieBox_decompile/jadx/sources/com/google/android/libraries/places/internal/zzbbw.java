package com.google.android.libraries.places.internal;

final class zzbbw extends zzbca {
    private final zzbbx zza;

    zzbbw(String str, boolean z10, zzbbx zzbbxVar, zzbbv zzbbvVar) {
        super(str, false, zzbbxVar, null);
        zzmt.zzl(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
        zzmt.zzc(zzbbxVar, "marshaller");
        this.zza = zzbbxVar;
    }

    @Override
    final Object zza(byte[] bArr) {
        return this.zza.zza(new String(bArr, zzmb.zza));
    }

    @Override
    final byte[] zzb(Object obj) {
        String strZzb = this.zza.zzb(obj);
        zzmt.zzc(strZzb, "null marshaller.toAsciiString()");
        return strZzb.getBytes(zzmb.zza);
    }
}
