package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.dhf;
import defpackage.qgf;
import defpackage.uif;

public final class zzcea extends zzcam {
    public final dhf d;
    public uif e;
    public Uri f;
    public qgf g;
    public boolean h;
    public int i;

    public zzcea(Context context, dhf dhfVar) {
        super(context);
        this.i = 1;
        this.h = false;
        this.d = dhfVar;
        dhfVar.a(this);
    }

    private final boolean a() {
        int i = this.i;
        return (i == 1 || i == 2 || this.e == null) ? false : true;
    }

    public static void zzi(zzcea zzceaVar) {
        qgf qgfVar = zzceaVar.g;
        if (qgfVar != null) {
            if (!zzceaVar.h) {
                qgfVar.zzg();
                zzceaVar.h = true;
            }
            zzceaVar.g.zze();
        }
    }

    public static void zzk(zzcea zzceaVar) {
        qgf qgfVar = zzceaVar.g;
        if (qgfVar != null) {
            qgfVar.zzd();
        }
    }

    public static void zzl(zzcea zzceaVar) {
        qgf qgfVar = zzceaVar.g;
        if (qgfVar != null) {
            qgfVar.zzf();
        }
    }

    public final void b(int i) {
        if (i == 4) {
            this.d.c();
            this.c.b();
        } else if (this.i == 4) {
            this.d.e();
            this.c.c();
        }
        this.i = i;
    }

    @Override
    public final String toString() {
        return zzcea.class.getName() + "@" + Integer.toHexString(hashCode());
    }

    @Override
    public final int zza() {
        return 0;
    }

    @Override
    public final int zzb() {
        return a() ? 0 : -1;
    }

    @Override
    public final int zzc() {
        return a() ? 0 : -1;
    }

    @Override
    public final int zzd() {
        return 0;
    }

    @Override
    public final int zze() {
        return 0;
    }

    @Override
    public final long zzf() {
        return 0L;
    }

    @Override
    public final long zzg() {
        return 0L;
    }

    @Override
    public final long zzh() {
        return 0L;
    }

    @Override
    public final String zzj() {
        return "ImmersivePlayer";
    }

    @Override
    public final void zzn() {
        if (this.e != null) {
            this.c.a();
        }
    }

    @Override
    public final void zzo() {
        zze.zza("AdImmersivePlayerView pause");
        if (a() && this.e.d()) {
            this.e.a();
            b(5);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    zzcea.zzk(this.zza);
                }
            });
        }
    }

    @Override
    public final void zzp() {
        zze.zza("AdImmersivePlayerView play");
        if (a()) {
            this.e.b();
            b(4);
            this.b.b();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    zzcea.zzi(this.zza);
                }
            });
        }
    }

    @Override
    public final void zzq(int i) {
        zze.zza("AdImmersivePlayerView seek " + i);
    }

    @Override
    public final void zzr(qgf qgfVar) {
        this.g = qgfVar;
    }

    @Override
    public final void zzs(@Nullable String str) {
        if (str != null) {
            Uri uri = Uri.parse(str);
            this.f = uri;
            this.e = new uif(uri.toString());
            b(3);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    zzcea.zzl(this.zza);
                }
            });
        }
    }

    @Override
    public final void zzt() {
        zze.zza("AdImmersivePlayerView stop");
        uif uifVar = this.e;
        if (uifVar != null) {
            uifVar.c();
            this.e = null;
            b(1);
        }
        this.d.d();
    }

    @Override
    public final void zzu(float f, float f2) {
    }
}
