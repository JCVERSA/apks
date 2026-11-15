package com.iab.omid.library.hisavana.walking;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import com.iab.omid.library.hisavana.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import le.i;

public class a {

    private final HashMap f32799a = new HashMap();

    private final HashMap f32800b = new HashMap();

    private final HashMap f32801c = new HashMap();

    private final HashSet f32802d = new HashSet();

    private final HashSet f32803e = new HashSet();

    private final HashSet f32804f = new HashSet();

    private final HashMap f32805g = new HashMap();

    private final HashSet f32806h = new HashSet();

    private final Map f32807i = new WeakHashMap();

    private boolean f32808j;

    public static class C0435a {

        private final e f32809a;

        private final ArrayList f32810b = new ArrayList();

        public C0435a(e eVar, String str) {
            this.f32809a = eVar;
            b(str);
        }

        public e a() {
            return this.f32809a;
        }

        public void b(String str) {
            this.f32810b.add(str);
        }

        public ArrayList c() {
            return this.f32810b;
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f32807i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f32807i.containsKey(view)) {
            return (Boolean) this.f32807i.get(view);
        }
        Map map = this.f32807i;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    private String c(View view, boolean z10) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue() && !z10) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strA = i.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f32802d.addAll(hashSet);
        return null;
    }

    private void e(h hVar) {
        Iterator it = hVar.n().iterator();
        while (it.hasNext()) {
            f((e) it.next(), hVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f(e eVar, h hVar) {
        View view = (View) eVar.c().get();
        if (view == null) {
            return;
        }
        C0435a c0435a = (C0435a) this.f32800b.get(view);
        if (c0435a != null) {
            c0435a.b(hVar.k());
        } else {
            this.f32800b.put(view, new C0435a(eVar, hVar.k()));
        }
    }

    public View a(String str) {
        return (View) this.f32801c.get(str);
    }

    public void d() {
        this.f32799a.clear();
        this.f32800b.clear();
        this.f32801c.clear();
        this.f32802d.clear();
        this.f32803e.clear();
        this.f32804f.clear();
        this.f32805g.clear();
        this.f32808j = false;
        this.f32806h.clear();
    }

    public C0435a g(View view) {
        C0435a c0435a = (C0435a) this.f32800b.get(view);
        if (c0435a != null) {
            this.f32800b.remove(view);
        }
        return c0435a;
    }

    public String h(String str) {
        return (String) this.f32805g.get(str);
    }

    public HashSet i() {
        return this.f32804f;
    }

    public String j(View view) {
        if (this.f32799a.size() == 0) {
            return null;
        }
        String str = (String) this.f32799a.get(view);
        if (str != null) {
            this.f32799a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f32803e;
    }

    public boolean l(String str) {
        return this.f32806h.contains(str);
    }

    public c m(View view) {
        if (this.f32802d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f32808j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f32808j = true;
    }

    public void o() {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.a()) {
                View viewM = hVar.m();
                if (hVar.p()) {
                    String strK = hVar.k();
                    if (viewM != null) {
                        boolean zE = i.e(viewM);
                        if (zE) {
                            this.f32806h.add(strK);
                        }
                        String strC = c(viewM, zE);
                        if (strC == null) {
                            this.f32803e.add(strK);
                            this.f32799a.put(viewM, strK);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f32804f.add(strK);
                            this.f32801c.put(strK, viewM);
                            this.f32805g.put(strK, strC);
                        }
                    } else {
                        this.f32804f.add(strK);
                        this.f32805g.put(strK, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f32807i.containsKey(view)) {
            return true;
        }
        this.f32807i.put(view, Boolean.TRUE);
        return false;
    }
}
