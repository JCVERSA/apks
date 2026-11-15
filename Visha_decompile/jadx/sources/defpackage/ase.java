package defpackage;

import android.view.View;
import com.google.android.gms.internal.ads.f0;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.internal.ads.zzavu;
import com.transsion.livecaption.constant.ICode;
import java.util.HashMap;
import java.util.Map;

public final class ase implements hyh {
    public final twh a;
    public final jxh b;
    public final f0 c;
    public final zzavu d;
    public final mre e;
    public final ose f;
    public final hse g;
    public final zre h;

    public ase(twh twhVar, jxh jxhVar, f0 f0Var, zzavu zzavuVar, mre mreVar, ose oseVar, hse hseVar, zre zreVar) {
        this.a = twhVar;
        this.b = jxhVar;
        this.c = f0Var;
        this.d = zzavuVar;
        this.e = mreVar;
        this.f = oseVar;
        this.g = hseVar;
        this.h = zreVar;
    }

    public final void a(View view) {
        this.c.d(view);
    }

    public final Map b() {
        HashMap map = new HashMap();
        twh twhVar = this.a;
        t tVarB = this.b.b();
        map.put("v", twhVar.d());
        map.put("gms", Boolean.valueOf(twhVar.g()));
        map.put("int", tVarB.T0());
        map.put("attts", Long.valueOf(tVarB.S0().b0()));
        map.put("att", tVarB.S0().e0());
        map.put("attkid", tVarB.S0().f0());
        map.put(ICode.CALL.CALL_DATA_DIRECTION_UP, Boolean.valueOf(this.d.a()));
        map.put("t", new Throwable());
        hse hseVar = this.g;
        if (hseVar != null) {
            map.put("tcq", Long.valueOf(hseVar.c()));
            map.put("tpq", Long.valueOf(hseVar.g()));
            map.put("tcv", Long.valueOf(hseVar.d()));
            map.put("tpv", Long.valueOf(hseVar.h()));
            map.put("tchv", Long.valueOf(hseVar.b()));
            map.put("tphv", Long.valueOf(hseVar.f()));
            map.put("tcc", Long.valueOf(hseVar.a()));
            map.put("tpc", Long.valueOf(hseVar.e()));
            mre mreVar = this.e;
            if (mreVar != null) {
                map.put("nt", Long.valueOf(mreVar.a()));
            }
            ose oseVar = this.f;
            if (oseVar != null) {
                map.put("vs", Long.valueOf(oseVar.c()));
                map.put("vf", Long.valueOf(oseVar.b()));
            }
        }
        return map;
    }

    @Override
    public final Map zza() {
        f0 f0Var = this.c;
        Map mapB = b();
        mapB.put("lts", Long.valueOf(f0Var.a()));
        return mapB;
    }

    @Override
    public final Map zzb() {
        return b();
    }

    @Override
    public final Map zzc() {
        zre zreVar = this.h;
        Map mapB = b();
        if (zreVar != null) {
            mapB.put("vst", zreVar.a());
        }
        return mapB;
    }
}
