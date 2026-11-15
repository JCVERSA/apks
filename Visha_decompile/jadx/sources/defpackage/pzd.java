package defpackage;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.t;

public final class pzd extends t {
    public final ArraySet g;
    public final c h;

    public pzd(vk5 vk5Var, c cVar, zi4 zi4Var) {
        super(vk5Var, zi4Var);
        this.g = new ArraySet();
        this.h = cVar;
        this.b.p("ConnectionlessLifecycleHelper", this);
    }

    public static void u(Activity activity, c cVar, xd xdVar) {
        vk5 vk5VarD = tk5.d(activity);
        pzd pzdVar = (pzd) vk5VarD.i("ConnectionlessLifecycleHelper", pzd.class);
        if (pzdVar == null) {
            pzdVar = new pzd(vk5VarD, cVar, zi4.o());
        }
        wd8.m(xdVar, "ApiKey cannot be null");
        pzdVar.g.add(xdVar);
        cVar.b(pzdVar);
    }

    @Override
    public final void h() {
        super.h();
        v();
    }

    @Override
    public final void j() {
        super.j();
        v();
    }

    @Override
    public final void k() {
        super.k();
        this.h.c(this);
    }

    @Override
    public final void m(ConnectionResult connectionResult, int i) {
        this.h.F(connectionResult, i);
    }

    @Override
    public final void n() {
        this.h.G();
    }

    public final ArraySet t() {
        return this.g;
    }

    public final void v() {
        if (this.g.isEmpty()) {
            return;
        }
        this.h.b(this);
    }
}
