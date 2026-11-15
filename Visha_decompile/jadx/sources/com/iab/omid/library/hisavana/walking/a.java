package com.iab.omid.library.hisavana.walking;

import android.view.View;
import defpackage.e3d;
import defpackage.ghd;
import defpackage.i8d;
import defpackage.ibd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public class a {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public final HashMap g = new HashMap();
    public final HashSet h = new HashSet();
    public final Map i = new WeakHashMap();
    public boolean j;

    public static class C0151a {
        public final ibd a;
        public final ArrayList b = new ArrayList();

        public C0151a(ibd ibdVar, String str) {
            this.a = ibdVar;
            b(str);
        }

        public ibd a() {
            return this.a;
        }

        public void b(String str) {
            this.b.add(str);
        }

        public ArrayList c() {
            return this.b;
        }
    }

    public View a(String str) {
        return (View) this.c.get(str);
    }

    public final Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.i.remove(view);
            return Boolean.FALSE;
        }
        boolean zContainsKey = this.i.containsKey(view);
        Map map = this.i;
        if (zContainsKey) {
            return (Boolean) map.get(view);
        }
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    public final String c(View view, boolean z) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue() && !z) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strA = ghd.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.d.addAll(hashSet);
        return null;
    }

    public void d() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.j = false;
        this.h.clear();
    }

    public final void e(e3d e3dVar) {
        Iterator it = e3dVar.n().iterator();
        while (it.hasNext()) {
            f((ibd) it.next(), e3dVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(ibd ibdVar, e3d e3dVar) {
        View view = (View) ibdVar.c().get();
        if (view == null) {
            return;
        }
        C0151a c0151a = (C0151a) this.b.get(view);
        if (c0151a != null) {
            c0151a.b(e3dVar.k());
        } else {
            this.b.put(view, new C0151a(ibdVar, e3dVar.k()));
        }
    }

    public C0151a g(View view) {
        C0151a c0151a = (C0151a) this.b.get(view);
        if (c0151a != null) {
            this.b.remove(view);
        }
        return c0151a;
    }

    public String h(String str) {
        return (String) this.g.get(str);
    }

    public HashSet i() {
        return this.f;
    }

    public String j(View view) {
        if (this.a.size() == 0) {
            return null;
        }
        String str = (String) this.a.get(view);
        if (str != null) {
            this.a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.e;
    }

    public boolean l(String str) {
        return this.h.contains(str);
    }

    public c m(View view) {
        if (this.d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.j = true;
    }

    public void o() {
        i8d i8dVarE = i8d.e();
        if (i8dVarE != null) {
            for (e3d e3dVar : i8dVarE.a()) {
                View viewM = e3dVar.m();
                if (e3dVar.p()) {
                    String strK = e3dVar.k();
                    if (viewM != null) {
                        boolean zE = ghd.e(viewM);
                        if (zE) {
                            this.h.add(strK);
                        }
                        String strC = c(viewM, zE);
                        if (strC == null) {
                            this.e.add(strK);
                            this.a.put(viewM, strK);
                            e(e3dVar);
                        } else if (strC != "noWindowFocus") {
                            this.f.add(strK);
                            this.c.put(strK, viewM);
                            this.g.put(strK, strC);
                        }
                    } else {
                        this.f.add(strK);
                        this.g.put(strK, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.i.containsKey(view)) {
            return true;
        }
        this.i.put(view, Boolean.TRUE);
        return false;
    }
}
