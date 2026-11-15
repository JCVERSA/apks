package com.iab.omid.library.bytedance2.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.bytedance2.utils.f;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class TreeWalker implements com.iab.omid.library.bytedance2.processor.a.InterfaceC0430a {

    private static TreeWalker f32663i = new TreeWalker();

    private static Handler f32664j = new Handler(Looper.getMainLooper());

    private static Handler f32665k = null;

    private static final Runnable f32666l = new b();

    private static final Runnable f32667m = new c();

    private int f32669b;

    private long f32675h;

    private List<TreeWalkerTimeLogger> f32668a = new ArrayList();

    private boolean f32670c = false;

    private final List<com.iab.omid.library.bytedance2.weakreference.a> f32671d = new ArrayList();

    private com.iab.omid.library.bytedance2.walking.a f32673f = new com.iab.omid.library.bytedance2.walking.a();

    private com.iab.omid.library.bytedance2.processor.b f32672e = new com.iab.omid.library.bytedance2.processor.b();

    private com.iab.omid.library.bytedance2.walking.b f32674g = new com.iab.omid.library.bytedance2.walking.b(new com.iab.omid.library.bytedance2.walking.async.c());

    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i10, long j10);
    }

    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i10, long j10);
    }

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            TreeWalker.this.f32674g.b();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            TreeWalker.getInstance().l();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            if (TreeWalker.f32665k != null) {
                TreeWalker.f32665k.post(TreeWalker.f32666l);
                TreeWalker.f32665k.postDelayed(TreeWalker.f32667m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f32675h);
    }

    private void e() {
        this.f32669b = 0;
        this.f32671d.clear();
        this.f32670c = false;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
        while (it.hasNext()) {
            if (it.next().e()) {
                this.f32670c = true;
                break;
            }
        }
        this.f32675h = f.b();
    }

    public static TreeWalker getInstance() {
        return f32663i;
    }

    private void i() {
        if (f32665k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f32665k = handler;
            handler.post(f32666l);
            f32665k.postDelayed(f32667m, 200L);
        }
    }

    private void k() {
        Handler handler = f32665k;
        if (handler != null) {
            handler.removeCallbacks(f32667m);
            f32665k = null;
        }
    }

    public void l() {
        e();
        f();
        d();
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f32668a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f32668a.add(treeWalkerTimeLogger);
    }

    void f() {
        this.f32673f.e();
        long jB = f.b();
        com.iab.omid.library.bytedance2.processor.a aVarA = this.f32672e.a();
        if (this.f32673f.b().size() > 0) {
            for (String str : this.f32673f.b()) {
                JSONObject jSONObjectA = aVarA.a(null);
                a(str, this.f32673f.a(str), jSONObjectA);
                com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.f32674g.a(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f32673f.c().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            a(null, aVarA, jSONObjectA2, com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA2);
            this.f32674g.b(jSONObjectA2, this.f32673f.c(), jB);
            if (this.f32670c) {
                Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
                while (it.hasNext()) {
                    it.next().a(this.f32671d);
                }
            }
        } else {
            this.f32674g.b();
        }
        this.f32673f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f32668a.clear();
        f32664j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f32668a.contains(treeWalkerTimeLogger)) {
            this.f32668a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f32668a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f32668a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f32669b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f32669b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String strD = this.f32673f.d(view);
        if (strD == null) {
            return false;
        }
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, strD);
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, Boolean.valueOf(this.f32673f.f(view)));
        this.f32673f.d();
        return true;
    }

    private void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.bytedance2.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, z10);
    }

    @Override
    public void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.bytedance2.walking.c cVarE;
        if (h.d(view) && (cVarE = this.f32673f.e(view)) != com.iab.omid.library.bytedance2.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, jSONObjectA);
            if (!b(view, jSONObjectA)) {
                boolean z11 = z10 || a(view, jSONObjectA);
                if (this.f32670c && cVarE == com.iab.omid.library.bytedance2.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f32671d.add(new com.iab.omid.library.bytedance2.weakreference.a(view));
                }
                a(view, aVar, jSONObjectA, cVarE, z11);
            }
            this.f32669b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.processor.a aVarB = this.f32672e.b();
        String strB = this.f32673f.b(str);
        if (strB != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObjectA, str);
            com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA, strB);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, jSONObjectA);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.walking.a.C0432a c0432aC = this.f32673f.c(view);
        if (c0432aC == null) {
            return false;
        }
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, c0432aC);
        return true;
    }
}
