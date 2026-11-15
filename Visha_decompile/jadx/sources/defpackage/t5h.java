package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class t5h implements eeh {
    public final g8i a;
    public final enh b;
    public final int c;

    public t5h(g8i g8iVar, enh enhVar, vnh vnhVar, int i) {
        this.a = g8iVar;
        this.b = enhVar;
        this.c = i;
    }

    public static u5h a(t5h t5hVar) {
        boolean zEquals;
        String strA = null;
        if (((Boolean) zzbd.zzc().b(cye.Y6)).booleanValue()) {
            enh enhVar = t5hVar.b;
            if (t5hVar.c != 2) {
                String strZzc = zzaa.zzc(enhVar.d);
                if (((Boolean) zzbd.zzc().b(cye.Z6)).booleanValue()) {
                    zEquals = Arrays.asList(((String) zzbd.zzc().b(cye.a7)).split(StringUtils.COMMA)).contains(zzaa.zzb(strZzc));
                } else {
                    zEquals = Objects.equals(strZzc, "requester_type_2");
                }
                if (zEquals) {
                    strA = vnh.a();
                }
            }
        }
        return new u5h(strA);
    }

    @Override
    public final int zza() {
        return 5;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return t5h.a(this.b);
            }
        });
    }
}
