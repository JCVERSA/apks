package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class jie implements tge {
    public final yhe a;
    public final long[] b;
    public final Map c;
    public final Map d;
    public final Map e;

    public jie(yhe yheVar, Map map, Map map2, Map map3) {
        this.a = yheVar;
        this.d = map2;
        this.e = map3;
        this.c = Collections.unmodifiableMap(map);
        this.b = yheVar.h();
    }

    @Override
    public final List a(long j) {
        return this.a.e(j, this.c, this.d, this.e);
    }

    @Override
    public final int zza() {
        return this.b.length;
    }

    @Override
    public final long zzb(int i) {
        return this.b[i];
    }
}
