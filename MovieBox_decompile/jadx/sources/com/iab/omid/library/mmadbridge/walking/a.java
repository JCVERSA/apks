package com.iab.omid.library.mmadbridge.walking;

import android.view.View;
import com.iab.omid.library.mmadbridge.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import re.h;

public class a {

    private final HashMap f32919a = new HashMap();

    private final HashMap f32920b = new HashMap();

    private final HashMap f32921c = new HashMap();

    private final HashSet f32922d = new HashSet();

    private final HashSet f32923e = new HashSet();

    private final HashSet f32924f = new HashSet();

    private final HashMap f32925g = new HashMap();

    private final HashSet f32926h = new HashSet();

    private final Map f32927i = new WeakHashMap();

    private boolean f32928j;

    public static class C0437a {

        private final e f32929a;

        private final ArrayList f32930b = new ArrayList();

        public C0437a(e eVar, String str) {
            this.f32929a = eVar;
            b(str);
        }

        public e a() {
            return this.f32929a;
        }

        public void b(String str) {
            this.f32930b.add(str);
        }

        public ArrayList c() {
            return this.f32930b;
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f32927i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f32927i.containsKey(view)) {
            return (Boolean) this.f32927i.get(view);
        }
        Map map = this.f32927i;
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
            String strA = h.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f32922d.addAll(hashSet);
        return null;
    }

    private void e(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        Iterator it = hVar.o().iterator();
        while (it.hasNext()) {
            f((e) it.next(), hVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f(e eVar, com.iab.omid.library.mmadbridge.adsession.h hVar) {
        View view = (View) eVar.c().get();
        if (view == null) {
            return;
        }
        C0437a c0437a = (C0437a) this.f32920b.get(view);
        if (c0437a != null) {
            c0437a.b(hVar.s());
        } else {
            this.f32920b.put(view, new C0437a(eVar, hVar.s()));
        }
    }

    public View a(String str) {
        return (View) this.f32921c.get(str);
    }

    public void d() {
        this.f32919a.clear();
        this.f32920b.clear();
        this.f32921c.clear();
        this.f32922d.clear();
        this.f32923e.clear();
        this.f32924f.clear();
        this.f32925g.clear();
        this.f32928j = false;
        this.f32926h.clear();
    }

    public C0437a g(View view) {
        C0437a c0437a = (C0437a) this.f32920b.get(view);
        if (c0437a != null) {
            this.f32920b.remove(view);
        }
        return c0437a;
    }

    public String h(String str) {
        return (String) this.f32925g.get(str);
    }

    public HashSet i() {
        return this.f32924f;
    }

    public String j(View view) {
        if (this.f32919a.size() == 0) {
            return null;
        }
        String str = (String) this.f32919a.get(view);
        if (str != null) {
            this.f32919a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f32923e;
    }

    public boolean l(String str) {
        return this.f32926h.contains(str);
    }

    public c m(View view) {
        if (this.f32922d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f32928j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f32928j = true;
    }

    public void o() {
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            for (com.iab.omid.library.mmadbridge.adsession.h hVar : cVarE.a()) {
                View viewN = hVar.n();
                if (hVar.q()) {
                    String strS = hVar.s();
                    if (viewN != null) {
                        boolean zE = h.e(viewN);
                        if (zE) {
                            this.f32926h.add(strS);
                        }
                        String strC = c(viewN, zE);
                        if (strC == null) {
                            this.f32923e.add(strS);
                            this.f32919a.put(viewN, strS);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f32924f.add(strS);
                            this.f32921c.put(strS, viewN);
                            this.f32925g.put(strS, strC);
                        }
                    } else {
                        this.f32924f.add(strS);
                        this.f32925g.put(strS, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f32927i.containsKey(view)) {
            return true;
        }
        this.f32927i.put(view, Boolean.TRUE);
        return false;
    }
}
