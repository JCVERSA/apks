package com.iab.omid.library.bytedance2.walking;

import android.view.View;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public class a {

    private final HashMap<View, String> f32677a = new HashMap<>();

    private final HashMap<View, C0432a> f32678b = new HashMap<>();

    private final HashMap<String, View> f32679c = new HashMap<>();

    private final HashSet<View> f32680d = new HashSet<>();

    private final HashSet<String> f32681e = new HashSet<>();

    private final HashSet<String> f32682f = new HashSet<>();

    private final HashMap<String, String> f32683g = new HashMap<>();

    private final Map<View, Boolean> f32684h = new WeakHashMap();

    private boolean f32685i;

    public static class C0432a {

        private final e f32686a;

        private final ArrayList<String> f32687b = new ArrayList<>();

        public C0432a(e eVar, String str) {
            this.f32686a = eVar;
            a(str);
        }

        public e a() {
            return this.f32686a;
        }

        public ArrayList<String> b() {
            return this.f32687b;
        }

        public void a(String str) {
            this.f32687b.add(str);
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f32684h.remove(view);
            return Boolean.FALSE;
        }
        if (this.f32684h.containsKey(view)) {
            return this.f32684h.get(view);
        }
        Map<View, Boolean> map = this.f32684h;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    public View a(String str) {
        return this.f32679c.get(str);
    }

    public C0432a c(View view) {
        C0432a c0432a = this.f32678b.get(view);
        if (c0432a != null) {
            this.f32678b.remove(view);
        }
        return c0432a;
    }

    public String d(View view) {
        if (this.f32677a.size() == 0) {
            return null;
        }
        String str = this.f32677a.get(view);
        if (str != null) {
            this.f32677a.remove(view);
        }
        return str;
    }

    public c e(View view) {
        if (this.f32680d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f32685i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public boolean f(View view) {
        if (!this.f32684h.containsKey(view)) {
            return true;
        }
        this.f32684h.put(view, Boolean.TRUE);
        return false;
    }

    private String a(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue()) {
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
        this.f32680d.addAll(hashSet);
        return null;
    }

    public String b(String str) {
        return this.f32683g.get(str);
    }

    public HashSet<String> c() {
        return this.f32681e;
    }

    public void d() {
        this.f32685i = true;
    }

    public void e() {
        com.iab.omid.library.bytedance2.internal.c cVarC = com.iab.omid.library.bytedance2.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : cVarC.a()) {
                View viewC = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (viewC != null) {
                        String strA = a(viewC);
                        if (strA == null) {
                            this.f32681e.add(adSessionId);
                            this.f32677a.put(viewC, adSessionId);
                            a(aVar);
                        } else if (strA != "noWindowFocus") {
                            this.f32682f.add(adSessionId);
                            this.f32679c.put(adSessionId, viewC);
                            this.f32683g.put(adSessionId, strA);
                        }
                    } else {
                        this.f32682f.add(adSessionId);
                        this.f32683g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void a() {
        this.f32677a.clear();
        this.f32678b.clear();
        this.f32679c.clear();
        this.f32680d.clear();
        this.f32681e.clear();
        this.f32682f.clear();
        this.f32683g.clear();
        this.f32685i = false;
    }

    public HashSet<String> b() {
        return this.f32682f;
    }

    private void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        Iterator<e> it = aVar.d().iterator();
        while (it.hasNext()) {
            a(it.next(), aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.bytedance2.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0432a c0432a = this.f32678b.get(view);
        if (c0432a != null) {
            c0432a.a(aVar.getAdSessionId());
        } else {
            this.f32678b.put(view, new C0432a(eVar, aVar.getAdSessionId()));
        }
    }
}
