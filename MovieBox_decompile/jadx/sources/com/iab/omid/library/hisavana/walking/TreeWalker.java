package com.iab.omid.library.hisavana.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import com.iab.omid.library.hisavana.internal.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import le.f;
import le.i;
import org.json.JSONObject;

public class TreeWalker implements ke.a.InterfaceC0790a {

    private static TreeWalker f32785i = new TreeWalker();

    private static Handler f32786j = new Handler(Looper.getMainLooper());

    private static Handler f32787k = null;

    private static final Runnable f32788l = new b();

    private static final Runnable f32789m = new c();

    private int f32791b;

    private long f32797h;

    private List f32790a = new ArrayList();

    private boolean f32792c = false;

    private final List f32793d = new ArrayList();

    private com.iab.omid.library.hisavana.walking.a f32795f = new com.iab.omid.library.hisavana.walking.a();

    private ke.b f32794e = new ke.b();

    private com.iab.omid.library.hisavana.walking.b f32796g = new com.iab.omid.library.hisavana.walking.b(new me.c());

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            TreeWalker.this.f32796g.c();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            TreeWalker.p().u();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            if (TreeWalker.f32787k != null) {
                TreeWalker.f32787k.post(TreeWalker.f32788l);
                TreeWalker.f32787k.postDelayed(TreeWalker.f32789m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j10) {
        if (this.f32790a.size() > 0) {
            Iterator it = this.f32790a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j10);
                throw null;
            }
        }
    }

    private void e(View view, ke.a aVar, JSONObject jSONObject, com.iab.omid.library.hisavana.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        ke.a aVarB = this.f32794e.b();
        String strH = this.f32795f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            le.c.h(jSONObjectA, str);
            le.c.o(jSONObjectA, strH);
            le.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        com.iab.omid.library.hisavana.walking.a.C0435a c0435aG = this.f32795f.g(view);
        if (c0435aG == null) {
            return false;
        }
        le.c.f(jSONObject, c0435aG);
        return true;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f32795f.j(view);
        if (strJ == null) {
            return false;
        }
        le.c.h(jSONObject, strJ);
        le.c.g(jSONObject, Boolean.valueOf(this.f32795f.p(view)));
        le.c.n(jSONObject, Boolean.valueOf(this.f32795f.l(strJ)));
        this.f32795f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f32797h);
    }

    private void m() {
        this.f32791b = 0;
        this.f32793d.clear();
        this.f32792c = false;
        Iterator it = com.iab.omid.library.hisavana.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).o()) {
                this.f32792c = true;
                break;
            }
        }
        this.f32797h = f.b();
    }

    public static TreeWalker p() {
        return f32785i;
    }

    private void r() {
        if (f32787k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f32787k = handler;
            handler.post(f32788l);
            f32787k.postDelayed(f32789m, 200L);
        }
    }

    private void t() {
        Handler handler = f32787k;
        if (handler != null) {
            handler.removeCallbacks(f32789m);
            f32787k = null;
        }
    }

    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override
    public void a(View view, ke.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.hisavana.walking.c cVarM;
        if (i.f(view) && (cVarM = this.f32795f.m(view)) != com.iab.omid.library.hisavana.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            le.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f32792c && cVarM == com.iab.omid.library.hisavana.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f32793d.add(new ne.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f32791b++;
        }
    }

    void n() {
        this.f32795f.o();
        long jB = f.b();
        ke.a aVarA = this.f32794e.a();
        if (this.f32795f.i().size() > 0) {
            for (String str : this.f32795f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f32795f.a(str), jSONObjectA);
                le.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f32796g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f32795f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, false);
            le.c.m(jSONObjectA2);
            this.f32796g.d(jSONObjectA2, this.f32795f.k(), jB);
            if (this.f32792c) {
                Iterator it = com.iab.omid.library.hisavana.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).h(this.f32793d);
                }
            }
        } else {
            this.f32796g.c();
        }
        this.f32795f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f32790a.clear();
        f32786j.post(new a());
    }
}
