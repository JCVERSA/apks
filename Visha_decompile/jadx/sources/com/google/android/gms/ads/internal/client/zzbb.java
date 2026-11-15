package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.iaf;
import defpackage.n1f;
import defpackage.ncf;
import defpackage.o1f;
import java.util.Random;

public final class zzbb {
    public static final zzbb f = new zzbb();
    public static final int zza = 0;
    public final com.google.android.gms.ads.internal.util.client.zzf a;
    public final zzaz b;
    public final String c;
    public final VersionInfoParcel d;
    public final Random e;

    public zzbb() {
        com.google.android.gms.ads.internal.util.client.zzf zzfVar = new com.google.android.gms.ads.internal.util.client.zzf();
        zzaz zzazVar = new zzaz(new zzk(), new zzi(), new zzfa(), new n1f(), new ncf(), new iaf(), new o1f(), new zzl());
        String strZzf = com.google.android.gms.ads.internal.util.client.zzf.zzf();
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(0, 251410000, true);
        Random random = new Random();
        this.a = zzfVar;
        this.b = zzazVar;
        this.c = strZzf;
        this.d = versionInfoParcel;
        this.e = random;
    }

    public static zzaz zza() {
        return f.b;
    }

    public static com.google.android.gms.ads.internal.util.client.zzf zzb() {
        return f.a;
    }

    public static VersionInfoParcel zzc() {
        return f.d;
    }

    public static String zzd() {
        return f.c;
    }

    public static Random zze() {
        return f.e;
    }
}
