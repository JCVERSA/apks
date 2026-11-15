package defpackage;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzabu;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzfww;
import defpackage.t6e;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

public final class t6e implements ygf {
    public final Context a;
    public final dbh b = new dbh(10);
    public final mgf c;
    public final SparseArray d;
    public final List e;
    public final vbf f;
    public final m7e g;
    public final tbg h;
    public final CopyOnWriteArraySet i;
    public final erj j;
    public olg k;
    public int l;
    public Pair m;
    public int n;
    public int o;
    public long p;
    public long q;
    public int r;

    public t6e(n6e n6eVar, s6e s6eVar) {
        this.a = n6eVar.a;
        mgf mgfVar = n6eVar.d;
        n7g.b(mgfVar);
        this.c = mgfVar;
        this.d = new SparseArray();
        this.e = n6eVar.e;
        this.f = n6eVar.f;
        tbg tbgVar = n6eVar.g;
        this.h = tbgVar;
        this.g = new e6e(n6eVar.b, tbgVar);
        this.i = new CopyOnWriteArraySet();
        this.j = new gpj().K();
        this.p = C.TIME_UNSET;
        this.q = C.TIME_UNSET;
        this.r = -1;
        this.o = 0;
    }

    public static void g(t6e t6eVar) {
        t6eVar.n--;
    }

    public static void j(final t6e t6eVar, boolean z) {
        dbh dbhVar;
        if (t6eVar.o == 1) {
            t6eVar.n++;
            m7e m7eVar = t6eVar.g;
            m7eVar.zzc(z);
            while (true) {
                dbhVar = t6eVar.b;
                if (dbhVar.a() <= 1) {
                    break;
                } else {
                    dbhVar.b();
                }
            }
            if (dbhVar.a() == 1) {
                Long l = (Long) dbhVar.b();
                l.getClass();
                m7eVar.e(1, t6eVar.j, l.longValue(), t6eVar.l, zzfww.zzn());
            }
            t6eVar.p = C.TIME_UNSET;
            t6eVar.q = C.TIME_UNSET;
            olg olgVar = t6eVar.k;
            n7g.b(olgVar);
            olgVar.f(new Runnable() {
                @Override
                public final void run() {
                    t6e.g(this.zza);
                }
            });
        }
    }

    public static boolean s(t6e t6eVar, erj erjVar, int i) throws zzabu {
        n7g.f(t6eVar.o == 0);
        h6j h6jVarU = u(erjVar.C);
        if (h6jVarU.c == 7 && kfh.a < 34) {
            p1j p1jVarC = h6jVarU.c();
            p1jVarC.d(6);
            h6jVarU = p1jVarC.g();
        }
        h6j h6jVar = h6jVarU;
        tbg tbgVar = t6eVar.h;
        Looper looperMyLooper = Looper.myLooper();
        n7g.b(looperMyLooper);
        final olg olgVarA = tbgVar.a(looperMyLooper, null);
        t6eVar.k = olgVarA;
        try {
            mgf mgfVar = t6eVar.c;
            Context context = t6eVar.a;
            ubj ubjVar = ubj.a;
            Objects.requireNonNull(olgVarA);
            mgfVar.a(context, h6jVar, ubjVar, t6eVar, new Executor() {
                @Override
                public final void execute(Runnable runnable) {
                    olgVarA.f(runnable);
                }
            }, t6eVar.f, t6eVar.e, 0L, false);
            throw null;
        } catch (zzbw e) {
            throw new zzabu(e, erjVar);
        }
    }

    public static boolean t(t6e t6eVar) {
        int i = t6eVar.r;
        return i != -1 && i == 0;
    }

    public static h6j u(h6j h6jVar) {
        return (h6jVar == null || !h6jVar.f()) ? h6j.h : h6jVar;
    }

    public final m7e e(int i) {
        SparseArray sparseArray = this.d;
        n7g.f(!kfh.h(sparseArray, 0));
        o6e o6eVar = new o6e(this, this.a, 0);
        this.i.add(o6eVar);
        sparseArray.put(0, o6eVar);
        return o6eVar;
    }

    public final void n() {
        s5h s5hVar = s5h.c;
        s5hVar.b();
        s5hVar.a();
        this.m = null;
    }

    public final void o() {
        if (this.o == 2) {
            return;
        }
        olg olgVar = this.k;
        if (olgVar != null) {
            olgVar.a(null);
        }
        this.m = null;
        this.o = 2;
    }

    public final void p(Surface surface, s5h s5hVar) {
        Pair pair = this.m;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((s5h) this.m.second).equals(s5hVar)) {
            return;
        }
        this.m = Pair.create(surface, s5hVar);
        s5hVar.b();
        s5hVar.a();
    }

    public final void q(int i) {
        this.r = 1;
    }
}
