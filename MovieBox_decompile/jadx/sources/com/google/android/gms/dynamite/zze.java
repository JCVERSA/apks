package com.google.android.gms.dynamite;

import android.content.Context;

final class zze implements DynamiteModule.VersionPolicy.IVersions {
    zze() {
    }

    @Override
    public final int zza(Context context, String str) {
        return DynamiteModule.getLocalVersion(context, str);
    }

    @Override
    public final int zzb(Context context, String str, boolean z10) throws DynamiteModule.LoadingException {
        return DynamiteModule.zza(context, str, z10);
    }
}
