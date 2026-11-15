package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class g72 implements xn2.a {
    private static g72 h = new g72();
    private static Handler i = new Handler(Looper.getMainLooper());
    private static Handler j = null;
    private static final Runnable k = new b();
    private static final Runnable l = new c();
    private int b;
    private long g;
    private ArrayList a = new ArrayList();
    private final ArrayList c = new ArrayList();
    private bo2 e = new bo2();
    private ho2 d = new ho2();
    private ko2 f = new ko2(new po2());

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            g72.this.f.a();
        }
    }

    public static class b implements Runnable {
        @Override
        public final void run() {
            g72.b(g72.g());
        }
    }

    public static class c implements Runnable {
        @Override
        public final void run() {
            if (g72.j != null) {
                g72.j.post(g72.k);
                g72.j.postDelayed(g72.l, 200L);
            }
        }
    }

    public interface d extends e {
        void a();
    }

    public interface e {
        void b();
    }

    public static void c() {
        Handler handler = j;
        if (handler != null) {
            handler.removeCallbacks(l);
            j = null;
        }
    }

    public static g72 g() {
        return h;
    }

    public final void b() {
        c();
        this.a.clear();
        i.post(new a());
    }

    public static void a() {
        if (j == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            j = handler;
            handler.post(k);
            j.postDelayed(l, 200L);
        }
    }

    public static void b(g72 g72Var) {
        g72Var.b = 0;
        g72Var.c.clear();
        Iterator<vn2> it = wn2.a().c().iterator();
        while (it.hasNext()) {
            it.next().getClass();
        }
        g72Var.g = System.nanoTime();
        g72Var.e.c();
        long jNanoTime = System.nanoTime();
        oo2 oo2VarA = g72Var.d.a();
        if (g72Var.e.b().size() > 0) {
            for (String str : g72Var.e.b()) {
                JSONObject jSONObjectA = oo2VarA.a(null);
                View viewB = g72Var.e.b(str);
                so2 so2VarB = g72Var.d.b();
                String strA = g72Var.e.a(str);
                if (strA != null) {
                    JSONObject jSONObjectA2 = so2VarB.a(viewB);
                    try {
                        jSONObjectA2.put("adSessionId", str);
                    } catch (JSONException e2) {
                        Log.e("OMIDLIB", "Error with setting ad session id", e2);
                    }
                    try {
                        jSONObjectA2.put("notVisibleReason", strA);
                    } catch (JSONException e3) {
                        Log.e("OMIDLIB", "Error with setting not visible reason", e3);
                    }
                    io2.a(jSONObjectA, jSONObjectA2);
                }
                io2.a(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                g72Var.f.b(jSONObjectA, hashSet, jNanoTime);
            }
        }
        if (g72Var.e.a().size() > 0) {
            JSONObject jSONObjectA3 = oo2VarA.a(null);
            oo2VarA.a(null, jSONObjectA3, g72Var, true, false);
            io2.a(jSONObjectA3);
            g72Var.f.a(jSONObjectA3, g72Var.e.a(), jNanoTime);
        } else {
            g72Var.f.a();
        }
        g72Var.e.d();
        long jNanoTime2 = System.nanoTime() - g72Var.g;
        if (g72Var.a.size() > 0) {
            for (e eVar : g72Var.a) {
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                eVar.b();
                if (eVar instanceof d) {
                    ((d) eVar).a();
                }
            }
        }
    }

    public final void a(View view, xn2 xn2Var, JSONObject jSONObject, boolean z) {
        int iC;
        boolean z2;
        if (ap2.c(view) != null || (iC = this.e.c(view)) == 3) {
            return;
        }
        JSONObject jSONObjectA = xn2Var.a(view);
        io2.a(jSONObject, jSONObjectA);
        Object objA = this.e.a(view);
        if (objA != null) {
            try {
                jSONObjectA.put("adSessionId", objA);
            } catch (JSONException e2) {
                Log.e("OMIDLIB", "Error with setting ad session id", e2);
            }
            try {
                jSONObjectA.put("hasWindowFocus", Boolean.valueOf(this.e.d(view)));
            } catch (JSONException e3) {
                Log.e("OMIDLIB", "Error with setting not visible reason", e3);
            }
            this.e.e();
        } else {
            bo2.a aVarB = this.e.b(view);
            if (aVarB != null) {
                no2 no2VarA = aVarB.a();
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = aVarB.b().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                try {
                    jSONObjectA.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectA.put("friendlyObstructionClass", no2VarA.b());
                    jSONObjectA.put("friendlyObstructionPurpose", no2VarA.c());
                    jSONObjectA.put("friendlyObstructionReason", no2VarA.d());
                } catch (JSONException e4) {
                    Log.e("OMIDLIB", "Error with setting friendly obstruction", e4);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            xn2Var.a(view, jSONObjectA, this, iC == 1, z || z2);
        }
        this.b++;
    }
}
