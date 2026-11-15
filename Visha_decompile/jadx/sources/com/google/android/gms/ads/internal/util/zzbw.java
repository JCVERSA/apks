package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import defpackage.nth;
import defpackage.oth;
import defpackage.zef;

public final class zzbw extends zzb {
    public final com.google.android.gms.ads.internal.util.client.zzu c;
    public final String d;
    public final com.google.android.gms.ads.internal.util.client.zzv e;

    public zzbw(Context context, String str, String str2, @Nullable oth othVar, @Nullable com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.c = new com.google.android.gms.ads.internal.util.client.zzu(com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str));
        this.d = str2;
        this.e = zzvVar;
    }

    @Override
    public final void zza() {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.e;
        if (zzvVar == null) {
            this.c.zza(this.d);
        } else {
            new nth(zzvVar.zzb(), this.c, zef.e, null).d(this.d);
        }
    }
}
