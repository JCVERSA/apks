package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.i3;
import com.google.android.gms.internal.ads.n0;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.q4;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public final class slg implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public slg(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar4;
    }

    @Override
    public final Object zzb() {
        Set setEmptySet;
        final String strA = ((ugh) this.a).a();
        Context contextA = ((skf) this.b).a();
        g8i g8iVarB = fqh.b();
        Map mapZzb = ((lyi) this.c).zzb();
        if (((Boolean) zzbd.zzc().b(cye.g5)).booleanValue()) {
            o0 o0Var = new o0(new exe(contextA));
            o0Var.b(new n0() {
                @Override
                public final void a(i3 i3Var) {
                    i3Var.y(strA);
                }
            });
            setEmptySet = Collections.singleton(new i8g(new q4(o0Var, mapZzb), g8iVarB));
        } else {
            setEmptySet = Collections.emptySet();
        }
        pyi.b(setEmptySet);
        return setEmptySet;
    }
}
