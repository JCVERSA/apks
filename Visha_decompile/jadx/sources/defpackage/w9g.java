package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzm;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

public class w9g {
    public final ebg a;
    public final ejf b;

    public w9g(ebg ebgVar, ejf ejfVar) {
        this.a = ebgVar;
        this.b = ejfVar;
    }

    public final View a() {
        ejf ejfVar = this.b;
        if (ejfVar == null) {
            return null;
        }
        return ejfVar.zzG();
    }

    public final View b() {
        ejf ejfVar = this.b;
        if (ejfVar != null) {
            return ejfVar.zzG();
        }
        return null;
    }

    public final ejf c() {
        return this.b;
    }

    public final i8g d(Executor executor) {
        final ejf ejfVar = this.b;
        return new i8g(new k4g() {
            @Override
            public final void zza() {
                zzm zzmVarZzL;
                ejf ejfVar2 = ejfVar;
                if (ejfVar2 == null || (zzmVarZzL = ejfVar2.zzL()) == null) {
                    return;
                }
                zzmVarZzL.zzb();
            }
        }, executor);
    }

    public final ebg e() {
        return this.a;
    }

    public Set f(zxf zxfVar) {
        return Collections.singleton(new i8g(zxfVar, zef.g));
    }

    public Set g(zxf zxfVar) {
        return Collections.singleton(new i8g(zxfVar, zef.g));
    }
}
