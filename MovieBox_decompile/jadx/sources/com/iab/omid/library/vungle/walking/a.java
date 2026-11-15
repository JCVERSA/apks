package com.iab.omid.library.vungle.walking;

import android.view.View;
import com.iab.omid.library.vungle.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import xe.h;

public class a {

    private final HashMap f33029a = new HashMap();

    private final HashMap f33030b = new HashMap();

    private final HashMap f33031c = new HashMap();

    private final HashSet f33032d = new HashSet();

    private final HashSet f33033e = new HashSet();

    private final HashSet f33034f = new HashSet();

    private final HashMap f33035g = new HashMap();

    private final HashSet f33036h = new HashSet();

    private final Map f33037i = new WeakHashMap();

    private boolean f33038j;

    public static class C0439a {
        public abstract e a();

        public abstract ArrayList b();
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f33037i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f33037i.containsKey(view)) {
            return (Boolean) this.f33037i.get(view);
        }
        Map map = this.f33037i;
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
        this.f33032d.addAll(hashSet);
        return null;
    }

    private void e(com.iab.omid.library.vungle.adsession.h hVar) {
        Iterator it = hVar.m().iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            f(null, hVar);
        }
    }

    private void f(e eVar, com.iab.omid.library.vungle.adsession.h hVar) {
        throw null;
    }

    public View a(String str) {
        return (View) this.f33031c.get(str);
    }

    public void d() {
        this.f33029a.clear();
        this.f33030b.clear();
        this.f33031c.clear();
        this.f33032d.clear();
        this.f33033e.clear();
        this.f33034f.clear();
        this.f33035g.clear();
        this.f33038j = false;
        this.f33036h.clear();
    }

    public C0439a g(View view) {
        return (C0439a) this.f33030b.get(view);
    }

    public String h(String str) {
        return (String) this.f33035g.get(str);
    }

    public HashSet i() {
        return this.f33034f;
    }

    public String j(View view) {
        if (this.f33029a.size() == 0) {
            return null;
        }
        String str = (String) this.f33029a.get(view);
        if (str != null) {
            this.f33029a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f33033e;
    }

    public boolean l(String str) {
        return this.f33036h.contains(str);
    }

    public c m(View view) {
        if (this.f33032d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f33038j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f33038j = true;
    }

    public void o() {
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            for (com.iab.omid.library.vungle.adsession.h hVar : cVarE.a()) {
                View viewL = hVar.l();
                if (hVar.o()) {
                    String strJ = hVar.j();
                    if (viewL != null) {
                        boolean zE = h.e(viewL);
                        if (zE) {
                            this.f33036h.add(strJ);
                        }
                        String strC = c(viewL, zE);
                        if (strC == null) {
                            this.f33033e.add(strJ);
                            this.f33029a.put(viewL, strJ);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f33034f.add(strJ);
                            this.f33031c.put(strJ, viewL);
                            this.f33035g.put(strJ, strC);
                        }
                    } else {
                        this.f33034f.add(strJ);
                        this.f33035g.put(strJ, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f33037i.containsKey(view)) {
            return true;
        }
        this.f33037i.put(view, Boolean.TRUE);
        return false;
    }
}
