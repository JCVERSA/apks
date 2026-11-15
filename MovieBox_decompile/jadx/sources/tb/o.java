package tb;

import androidx.compose.animation.core.j0;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

public class o {

    private final f f72668a;

    private final CrashlyticsWorkers f72669b;

    private String f72670c;

    private final a f72671d = new a(false);

    private final a f72672e = new a(true);

    private final j f72673f = new j(128);

    private final AtomicMarkableReference f72674g = new AtomicMarkableReference(null, false);

    class a {

        final AtomicMarkableReference f72675a;

        private final AtomicReference f72676b = new AtomicReference(null);

        private final boolean f72677c;

        public a(boolean z10) {
            this.f72677c = z10;
            this.f72675a = new AtomicMarkableReference(new d(64, z10 ? 8192 : 1024), false);
        }

        public void c() throws Throwable {
            this.f72676b.set(null);
            e();
        }

        private void d() {
            Runnable runnable = new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.f72667a.c();
                }
            };
            if (j0.a(this.f72676b, null, runnable)) {
                o.this.f72669b.f30473b.f(runnable);
            }
        }

        private void e() throws Throwable {
            Map mapA;
            synchronized (this) {
                try {
                    if (this.f72675a.isMarked()) {
                        mapA = ((d) this.f72675a.getReference()).a();
                        AtomicMarkableReference atomicMarkableReference = this.f72675a;
                        atomicMarkableReference.set((d) atomicMarkableReference.getReference(), false);
                    } else {
                        mapA = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (mapA != null) {
                o.this.f72668a.r(o.this.f72670c, mapA, this.f72677c);
            }
        }

        public Map b() {
            return ((d) this.f72675a.getReference()).a();
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                try {
                    if (!((d) this.f72675a.getReference()).d(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference atomicMarkableReference = this.f72675a;
                    atomicMarkableReference.set((d) atomicMarkableReference.getReference(), true);
                    d();
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public o(String str, xb.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f72670c = str;
        this.f72668a = new f(gVar);
        this.f72669b = crashlyticsWorkers;
    }

    public void k(String str, Map map, List list) throws Throwable {
        if (j() != null) {
            this.f72668a.t(str, j());
        }
        if (!map.isEmpty()) {
            this.f72668a.q(str, map);
        }
        if (list.isEmpty()) {
            return;
        }
        this.f72668a.s(str, list);
    }

    public void l(List list) throws Throwable {
        this.f72668a.s(this.f72670c, list);
    }

    public static o m(String str, xb.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        f fVar = new f(gVar);
        o oVar = new o(str, gVar, crashlyticsWorkers);
        ((d) oVar.f72671d.f72675a.getReference()).e(fVar.i(str, false));
        ((d) oVar.f72672e.f72675a.getReference()).e(fVar.i(str, true));
        oVar.f72674g.set(fVar.k(str), false);
        oVar.f72673f.c(fVar.j(str));
        return oVar;
    }

    public static String n(String str, xb.g gVar) {
        return new f(gVar).k(str);
    }

    public void o() throws Throwable {
        boolean z10;
        String strJ;
        synchronized (this.f72674g) {
            try {
                z10 = false;
                if (this.f72674g.isMarked()) {
                    strJ = j();
                    this.f72674g.set(strJ, false);
                    z10 = true;
                } else {
                    strJ = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            this.f72668a.t(this.f72670c, strJ);
        }
    }

    public Map g() {
        return this.f72671d.b();
    }

    public Map h() {
        return this.f72672e.b();
    }

    public List i() {
        return this.f72673f.a();
    }

    public String j() {
        return (String) this.f72674g.getReference();
    }

    public boolean p(String str, String str2) {
        return this.f72671d.f(str, str2);
    }

    public boolean q(String str, String str2) {
        return this.f72672e.f(str, str2);
    }

    public void r(final String str) {
        synchronized (this.f72670c) {
            this.f72670c = str;
            final Map mapB = this.f72671d.b();
            final List listB = this.f72673f.b();
            this.f72669b.f30473b.f(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.f72660a.k(str, mapB, listB);
                }
            });
        }
    }

    public void s(String str) {
        String strC = d.c(str, 1024);
        synchronized (this.f72674g) {
            try {
                if (CommonUtils.y(strC, (String) this.f72674g.getReference())) {
                    return;
                }
                this.f72674g.set(strC, true);
                this.f72669b.f30473b.f(new Runnable() {
                    @Override
                    public final void run() throws Throwable {
                        this.f72666a.o();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean t(List list) {
        synchronized (this.f72673f) {
            try {
                if (!this.f72673f.c(list)) {
                    return false;
                }
                final List listB = this.f72673f.b();
                this.f72669b.f30473b.f(new Runnable() {
                    @Override
                    public final void run() throws Throwable {
                        this.f72664a.l(listB);
                    }
                });
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
