package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.s;

public final class ste extends tte {
    public final View i;

    public ste(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, View view) {
        super(e0Var, "AjBekD8OAvnbcm+fCHiCamPJ8yOatZla9r0vCGcxk0kvLONYAtrizxoNBJMj4UJd", "1LVA+oN7RWnXoeYH8xRoaxx/0X5kk95KVCfYyybQlO4=", ooeVar, i, 57);
        this.i = view;
    }

    @Override
    public final void a() {
        View view = this.i;
        if (view != null) {
            Boolean bool = (Boolean) zzbd.zzc().b(cye.F3);
            Boolean bool2 = (Boolean) zzbd.zzc().b(cye.cb);
            kse kseVar = new kse((String) this.f.invoke(null, view, this.b.b().getResources().getDisplayMetrics(), bool, bool2));
            epe epeVarB0 = s.b0();
            epeVarB0.w(kseVar.b.longValue());
            epeVarB0.y(kseVar.c.longValue());
            epeVarB0.z(kseVar.d.longValue());
            if (bool2.booleanValue()) {
                epeVarB0.x(kseVar.f.longValue());
            }
            if (bool.booleanValue()) {
                epeVarB0.v(kseVar.e.longValue());
            }
            this.e.S((s) epeVarB0.q());
        }
    }
}
