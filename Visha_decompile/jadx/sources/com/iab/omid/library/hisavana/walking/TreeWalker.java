package com.iab.omid.library.hisavana.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.b7d;
import defpackage.e3d;
import defpackage.ghd;
import defpackage.i8d;
import defpackage.j3d;
import defpackage.k8d;
import defpackage.l8d;
import defpackage.njd;
import defpackage.qed;
import defpackage.ubc;
import defpackage.v1d;
import defpackage.v6d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class TreeWalker implements j3d.a {
    public static TreeWalker i = new TreeWalker();
    public static Handler j = new Handler(Looper.getMainLooper());
    public static Handler k = null;
    public static final Runnable l = new b();
    public static final Runnable m = new c();
    public int b;
    public long h;
    public List a = new ArrayList();
    public boolean c = false;
    public final List d = new ArrayList();
    public com.iab.omid.library.hisavana.walking.a f = new com.iab.omid.library.hisavana.walking.a();
    public v6d e = new v6d();
    public b7d g = new b7d(new l8d());

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            TreeWalker.this.g.c();
        }
    }

    public class b implements Runnable {
        @Override
        public void run() {
            TreeWalker.p().u();
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            if (TreeWalker.k != null) {
                TreeWalker.k.post(TreeWalker.l);
                TreeWalker.k.postDelayed(TreeWalker.m, 200L);
            }
        }
    }

    public static TreeWalker p() {
        return i;
    }

    @Override
    public void a(View view, j3d j3dVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.hisavana.walking.c cVarM;
        if (ghd.f(view) && (cVarM = this.f.m(view)) != com.iab.omid.library.hisavana.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = j3dVar.a(view);
            k8d.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z2 = z || g(view, jSONObjectA);
                if (this.c && cVarM == com.iab.omid.library.hisavana.walking.c.OBSTRUCTION_VIEW && !z2) {
                    this.d.add(new v1d(view));
                }
                e(view, j3dVar, jSONObjectA, cVarM, z2);
            }
            this.b++;
        }
    }

    public final void d(long j2) {
        if (this.a.size() > 0) {
            Iterator it = this.a.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j2);
                throw null;
            }
        }
    }

    public final void e(View view, j3d j3dVar, JSONObject jSONObject, com.iab.omid.library.hisavana.walking.c cVar, boolean z) {
        j3dVar.a(view, jSONObject, this, cVar == com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, z);
    }

    public final void f(String str, View view, JSONObject jSONObject) {
        j3d j3dVarB = this.e.b();
        String strH = this.f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = j3dVarB.a(view);
            k8d.h(jSONObjectA, str);
            k8d.o(jSONObjectA, strH);
            k8d.j(jSONObject, jSONObjectA);
        }
    }

    public final boolean g(View view, JSONObject jSONObject) {
        com.iab.omid.library.hisavana.walking.a.C0151a c0151aG = this.f.g(view);
        if (c0151aG == null) {
            return false;
        }
        k8d.f(jSONObject, c0151aG);
        return true;
    }

    public final boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f.j(view);
        if (strJ == null) {
            return false;
        }
        k8d.h(jSONObject, strJ);
        k8d.g(jSONObject, Boolean.valueOf(this.f.p(view)));
        k8d.n(jSONObject, Boolean.valueOf(this.f.l(strJ)));
        this.f.n();
        return true;
    }

    public final void l() {
        d(qed.b() - this.h);
    }

    public final void m() {
        this.b = 0;
        this.d.clear();
        this.c = false;
        Iterator it = i8d.e().a().iterator();
        while (it.hasNext()) {
            if (((e3d) it.next()).o()) {
                this.c = true;
                break;
            }
        }
        this.h = qed.b();
    }

    public void n() {
        this.f.o();
        long jB = qed.b();
        j3d j3dVarA = this.e.a();
        if (this.f.i().size() > 0) {
            for (String str : this.f.i()) {
                JSONObject jSONObjectA = j3dVarA.a(null);
                f(str, this.f.a(str), jSONObjectA);
                k8d.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f.k().size() > 0) {
            JSONObject jSONObjectA2 = j3dVarA.a(null);
            e(null, j3dVarA, jSONObjectA2, com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, false);
            k8d.m(jSONObjectA2);
            this.g.d(jSONObjectA2, this.f.k(), jB);
            if (this.c) {
                Iterator it = i8d.e().a().iterator();
                while (it.hasNext()) {
                    ((e3d) it.next()).h(this.d);
                }
            }
        } else {
            this.g.c();
        }
        this.f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public final void r() {
        if (k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            k = handler;
            handler.post(l);
            k.postDelayed(m, 200L);
        }
    }

    public void s() {
        o();
        this.a.clear();
        j.post(new a());
    }

    public final void t() {
        Handler handler = k;
        if (handler != null) {
            handler.removeCallbacks(m);
            k = null;
        }
    }

    public final void u() {
        m();
        n();
        l();
        njd.f().a();
    }
}
