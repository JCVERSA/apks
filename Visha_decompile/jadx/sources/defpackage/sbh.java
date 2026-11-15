package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class sbh implements eeh {
    public final g8i a;
    public final zog b;

    public sbh(g8i g8iVar, zog zogVar) {
        this.a = g8iVar;
        this.b = zogVar;
    }

    public static tbh a(sbh sbhVar) {
        zog zogVar = sbhVar.b;
        return new tbh(zogVar.d(), zogVar.s(), zzv.zzt().zzl(), zogVar.q(), zogVar.t());
    }

    @Override
    public final int zza() {
        return 23;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return sbh.a(this.b);
            }
        });
    }
}
