package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.e0;
import java.util.Map;

public final class zse extends tte {
    public final Map i;
    public final View j;
    public final Context k;

    public zse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, Map map, View view, Context context) {
        super(e0Var, "XpvF2/uvRNELJ1euLlde/4Jw6HxaseM6XnxEZgh8F+D9gojVn7K9cNMJ3MeGBnay", "CMabZGCeVS+h4QS0ZdkH8zZqB5SpBTHljExDl6prBWs=", ooeVar, i, 85);
        this.i = map;
        this.j = view;
        this.k = context;
    }

    @Override
    public final void a() {
        long[] jArr = {b(1), b(2)};
        Context contextB = this.k;
        if (contextB == null) {
            contextB = this.b.b();
        }
        long[] jArr2 = (long[]) this.f.invoke(null, jArr, contextB, this.j);
        long j = jArr2[0];
        Map map = this.i;
        map.put(1, Long.valueOf(jArr2[1]));
        long j2 = jArr2[2];
        map.put(2, Long.valueOf(jArr2[3]));
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.t0(j);
            ooeVar.s0(j2);
        }
    }

    public final long b(int i) {
        Map map = this.i;
        Integer numValueOf = Integer.valueOf(i);
        if (map.containsKey(numValueOf)) {
            return ((Long) map.get(numValueOf)).longValue();
        }
        return Long.MIN_VALUE;
    }
}
