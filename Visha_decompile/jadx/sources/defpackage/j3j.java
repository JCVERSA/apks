package defpackage;

import android.content.Context;
import android.os.Looper;

public final class j3j {
    public final Context a;
    public tbg b;
    public k3i c;
    public k3i d;
    public k3i e;
    public k3i f;
    public k3i g;
    public m2i h;
    public Looper i;
    public int j;
    public hvg k;
    public int l;
    public boolean m;
    public kaj n;
    public long o;
    public long p;
    public boolean q;
    public boolean r;
    public String s;
    public w1j t;

    public j3j(final Context context, pif pifVar) {
        v2j v2jVar = new v2j(pifVar);
        y2j y2jVar = new y2j(context);
        k3i k3iVar = new k3i() {
            @Override
            public final Object zza() {
                return new rqj(context);
            }
        };
        k3i k3iVar2 = new k3i() {
            @Override
            public final Object zza() {
                return new f2j();
            }
        };
        d3j d3jVar = new d3j(context);
        m2i m2iVar = new m2i() {
            @Override
            public final Object apply(Object obj) {
                return new wej((tbg) obj);
            }
        };
        context.getClass();
        this.a = context;
        this.c = v2jVar;
        this.d = y2jVar;
        this.e = k3iVar;
        this.f = k3iVar2;
        this.g = d3jVar;
        this.h = m2iVar;
        this.i = kfh.U();
        this.k = hvg.b;
        this.l = 1;
        this.m = true;
        this.n = kaj.d;
        this.t = new w1j(0.97f, 1.03f, 1000L, 1.0E-7f, kfh.N(20L), kfh.N(500L), 0.999f, null);
        this.b = tbg.a;
        this.o = 500L;
        this.p = 2000L;
        this.q = true;
        this.s = "";
        this.j = -1000;
        if (kfh.a >= 35) {
            int i = n2j.a;
        }
    }

    public static anj a(Context context) {
        return new omj(context, new r8e());
    }
}
