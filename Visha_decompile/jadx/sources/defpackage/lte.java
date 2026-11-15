package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.e0;
import java.util.List;

public final class lte extends tte {
    public List i;
    public final Context j;

    public lte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, Context context) {
        super(e0Var, "LPK2X6rZ40gCB/Aq86X/xtgAWXMNEk55OhrxDhgRpzoh9HPZZ/0RCmx0fLjxSQow", "y6emfCNhZ0kgm94Xn7mtTAzqT55FluzQgY4gK5Wl0vc=", ooeVar, i, 31);
        this.i = null;
        this.j = context;
    }

    @Override
    public final void a() {
        ooe ooeVar = this.e;
        ooeVar.Q(-1L);
        ooeVar.M(-1L);
        Context contextB = this.j;
        if (contextB == null) {
            contextB = this.b.b();
        }
        if (this.i == null) {
            this.i = (List) this.f.invoke(null, contextB);
        }
        List list = this.i;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (ooeVar) {
            ooeVar.Q(((Long) this.i.get(0)).longValue());
            ooeVar.M(((Long) this.i.get(1)).longValue());
        }
    }
}
