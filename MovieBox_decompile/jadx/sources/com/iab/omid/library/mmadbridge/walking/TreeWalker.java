package com.iab.omid.library.mmadbridge.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.h;
import com.iab.omid.library.mmadbridge.internal.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import re.f;

public class TreeWalker implements qe.a.InterfaceC0862a {

    private static TreeWalker f32905i = new TreeWalker();

    private static Handler f32906j = new Handler(Looper.getMainLooper());

    private static Handler f32907k = null;

    private static final Runnable f32908l = new b();

    private static final Runnable f32909m = new c();

    private int f32911b;

    private long f32917h;

    private List f32910a = new ArrayList();

    private boolean f32912c = false;

    private final List f32913d = new ArrayList();

    private com.iab.omid.library.mmadbridge.walking.a f32915f = new com.iab.omid.library.mmadbridge.walking.a();

    private qe.b f32914e = new qe.b();

    private com.iab.omid.library.mmadbridge.walking.b f32916g = new com.iab.omid.library.mmadbridge.walking.b(new se.c());

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            TreeWalker.this.f32916g.c();
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
            if (TreeWalker.f32907k != null) {
                TreeWalker.f32907k.post(TreeWalker.f32908l);
                TreeWalker.f32907k.postDelayed(TreeWalker.f32909m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j10) {
        if (this.f32910a.size() > 0) {
            Iterator it = this.f32910a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j10);
                throw null;
            }
        }
    }

    private void e(View view, qe.a aVar, JSONObject jSONObject, com.iab.omid.library.mmadbridge.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        qe.a aVarB = this.f32914e.b();
        String strH = this.f32915f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            re.c.h(jSONObjectA, str);
            re.c.o(jSONObjectA, strH);
            re.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        com.iab.omid.library.mmadbridge.walking.a.C0437a c0437aG = this.f32915f.g(view);
        if (c0437aG == null) {
            return false;
        }
        re.c.f(jSONObject, c0437aG);
        return true;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f32915f.j(view);
        if (strJ == null) {
            return false;
        }
        re.c.h(jSONObject, strJ);
        re.c.g(jSONObject, Boolean.valueOf(this.f32915f.p(view)));
        re.c.n(jSONObject, Boolean.valueOf(this.f32915f.l(strJ)));
        this.f32915f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f32917h);
    }

    private void m() {
        this.f32911b = 0;
        this.f32913d.clear();
        this.f32912c = false;
        Iterator it = com.iab.omid.library.mmadbridge.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).p()) {
                this.f32912c = true;
                break;
            }
        }
        this.f32917h = f.b();
    }

    public static TreeWalker p() {
        return f32905i;
    }

    private void r() {
        if (f32907k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f32907k = handler;
            handler.post(f32908l);
            f32907k.postDelayed(f32909m, 200L);
        }
    }

    private void t() {
        Handler handler = f32907k;
        if (handler != null) {
            handler.removeCallbacks(f32909m);
            f32907k = null;
        }
    }

    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override
    public void a(View view, qe.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.mmadbridge.walking.c cVarM;
        if (re.h.f(view) && (cVarM = this.f32915f.m(view)) != com.iab.omid.library.mmadbridge.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            re.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f32912c && cVarM == com.iab.omid.library.mmadbridge.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f32913d.add(new te.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f32911b++;
        }
    }

    void n() {
        this.f32915f.o();
        long jB = f.b();
        qe.a aVarA = this.f32914e.a();
        if (this.f32915f.i().size() > 0) {
            for (String str : this.f32915f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f32915f.a(str), jSONObjectA);
                re.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f32916g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f32915f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, false);
            re.c.m(jSONObjectA2);
            this.f32916g.d(jSONObjectA2, this.f32915f.k(), jB);
            if (this.f32912c) {
                Iterator it = com.iab.omid.library.mmadbridge.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).j(this.f32913d);
                }
            }
        } else {
            this.f32916g.c();
        }
        this.f32915f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f32910a.clear();
        f32906j.post(new a());
    }
}
