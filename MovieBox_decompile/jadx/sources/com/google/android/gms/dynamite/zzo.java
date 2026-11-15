package com.google.android.gms.dynamite;

import android.content.Context;

final class zzo implements DynamiteModule.VersionPolicy.IVersions {
    private final int zza;

    public zzo(int i10, int i11) {
        this.zza = i10;
    }

    @Override
    public final int zza(Context context, String str) {
        return this.zza;
    }

    @Override
    public final int zzb(Context context, String str, boolean z10) {
        return 0;
    }
}
