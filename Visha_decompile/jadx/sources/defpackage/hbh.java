package defpackage;

import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import java.util.concurrent.Callable;

public final class hbh implements eeh {
    public final g8i a;
    public final enh b;

    public hbh(g8i g8iVar, enh enhVar) {
        this.a = g8iVar;
        this.b = enhVar;
    }

    public static ibh a(hbh hbhVar) {
        return new ibh("requester_type_2".equals(zzaa.zzc(hbhVar.b.d)));
    }

    @Override
    public final int zza() {
        return 21;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return hbh.a(this.b);
            }
        });
    }
}
