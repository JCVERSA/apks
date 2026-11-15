package defpackage;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzg;
import java.util.concurrent.Callable;

public final class dch implements eeh {
    public final g8i a;
    public final enh b;
    public final PackageInfo c;
    public final zzg d;

    public dch(g8i g8iVar, enh enhVar, PackageInfo packageInfo, zzg zzgVar) {
        this.a = g8iVar;
        this.b = enhVar;
        this.c = packageInfo;
        this.d = zzgVar;
    }

    public static gch a(dch dchVar) {
        return new gch(dchVar.b, dchVar.c, dchVar.d);
    }

    @Override
    public final int zza() {
        return 26;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return dch.a(this.b);
            }
        });
    }
}
