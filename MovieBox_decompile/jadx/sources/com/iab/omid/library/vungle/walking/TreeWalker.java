package com.iab.omid.library.vungle.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.vungle.adsession.h;
import com.iab.omid.library.vungle.internal.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import xe.f;

public class TreeWalker implements we.a.InterfaceC0921a {

    private static TreeWalker f33015i = new TreeWalker();

    private static Handler f33016j = new Handler(Looper.getMainLooper());

    private static Handler f33017k = null;

    private static final Runnable f33018l = new b();

    private static final Runnable f33019m = new c();

    private int f33021b;

    private long f33027h;

    private List f33020a = new ArrayList();

    private boolean f33022c = false;

    private final List f33023d = new ArrayList();

    private com.iab.omid.library.vungle.walking.a f33025f = new com.iab.omid.library.vungle.walking.a();

    private we.b f33024e = new we.b();

    private com.iab.omid.library.vungle.walking.b f33026g = new com.iab.omid.library.vungle.walking.b(new ye.c());

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            TreeWalker.this.f33026g.c();
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
            if (TreeWalker.f33017k != null) {
                TreeWalker.f33017k.post(TreeWalker.f33018l);
                TreeWalker.f33017k.postDelayed(TreeWalker.f33019m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j10) {
        if (this.f33020a.size() > 0) {
            Iterator it = this.f33020a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j10);
                throw null;
            }
        }
    }

    private void e(View view, we.a aVar, JSONObject jSONObject, com.iab.omid.library.vungle.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.vungle.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        we.a aVarB = this.f33024e.b();
        String strH = this.f33025f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            xe.c.h(jSONObjectA, str);
            xe.c.o(jSONObjectA, strH);
            xe.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        this.f33025f.g(view);
        return false;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f33025f.j(view);
        if (strJ == null) {
            return false;
        }
        xe.c.h(jSONObject, strJ);
        xe.c.g(jSONObject, Boolean.valueOf(this.f33025f.p(view)));
        xe.c.n(jSONObject, Boolean.valueOf(this.f33025f.l(strJ)));
        this.f33025f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f33027h);
    }

    private void m() {
        this.f33021b = 0;
        this.f33023d.clear();
        this.f33022c = false;
        Iterator it = com.iab.omid.library.vungle.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).n()) {
                this.f33022c = true;
                break;
            }
        }
        this.f33027h = f.b();
    }

    public static TreeWalker p() {
        return f33015i;
    }

    private void r() {
        if (f33017k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33017k = handler;
            handler.post(f33018l);
            f33017k.postDelayed(f33019m, 200L);
        }
    }

    private void t() {
        Handler handler = f33017k;
        if (handler != null) {
            handler.removeCallbacks(f33019m);
            f33017k = null;
        }
    }

    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override
    public void a(View view, we.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.vungle.walking.c cVarM;
        if (xe.h.f(view) && (cVarM = this.f33025f.m(view)) != com.iab.omid.library.vungle.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            xe.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f33022c && cVarM == com.iab.omid.library.vungle.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f33023d.add(new ze.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f33021b++;
        }
    }

    void n() {
        this.f33025f.o();
        long jB = f.b();
        we.a aVarA = this.f33024e.a();
        if (this.f33025f.i().size() > 0) {
            for (String str : this.f33025f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f33025f.a(str), jSONObjectA);
                xe.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f33026g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f33025f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.vungle.walking.c.PARENT_VIEW, false);
            xe.c.m(jSONObjectA2);
            this.f33026g.d(jSONObjectA2, this.f33025f.k(), jB);
            if (this.f33022c) {
                Iterator it = com.iab.omid.library.vungle.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).g(this.f33023d);
                }
            }
        } else {
            this.f33026g.c();
        }
        this.f33025f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f33020a.clear();
        f33016j.post(new a());
    }
}
