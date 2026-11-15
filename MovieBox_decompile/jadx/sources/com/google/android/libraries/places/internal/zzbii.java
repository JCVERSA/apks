package com.google.android.libraries.places.internal;

import java.net.InetSocketAddress;
import java.net.URI;
import java.util.Collection;
import java.util.Collections;

public final class zzbii extends zzbcw {

    public static final int f27343a = 0;
    private static final boolean zza = zzbas.zza(zzbii.class.getClassLoader());

    @Override
    public final zzbcv zza(URI uri, zzbco zzbcoVar) {
        if (!"dns".equals(uri.getScheme())) {
            return null;
        }
        String path = uri.getPath();
        zzmt.zzc(path, "targetPath");
        zzmt.zzl(path.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", path, uri);
        return new zzbih(uri.getAuthority(), path.substring(1), zzbcoVar, zzbjd.zzp, zzna.zzb(), zza);
    }

    @Override
    public final String zzb() {
        return "dns";
    }

    @Override
    public final int zzc() {
        return 5;
    }

    @Override
    public final Collection zzd() {
        return Collections.singleton(InetSocketAddress.class);
    }

    @Override
    protected final boolean zze() {
        return true;
    }
}
