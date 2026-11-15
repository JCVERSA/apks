package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class r4 {
    private static final Object c = new Object();
    private static volatile r4 d;
    public static final int e = 0;
    private final ArrayList a;
    private final ArrayList b;

    public static final class a {
        public static r4 a() {
            r4 r4Var;
            r4 r4Var2 = r4.d;
            if (r4Var2 != null) {
                return r4Var2;
            }
            synchronized (r4.c) {
                r4Var = r4.d;
                if (r4Var == null) {
                    r4Var = new r4(0);
                    r4.d = r4Var;
                }
            }
            return r4Var;
        }
    }

    private r4() {
        this.a = new ArrayList();
        this.b = new ArrayList();
    }

    public final void b(String str) {
        y45.j(str, TtmlNode.ATTR_ID);
        synchronized (c) {
            this.a.remove(str);
            this.a.add(str);
        }
    }

    public final List<String> c() {
        List<String> listB1;
        synchronized (c) {
            listB1 = defpackage.i81.b1(this.b);
        }
        return listB1;
    }

    public final List<String> d() {
        List<String> listB1;
        synchronized (c) {
            listB1 = defpackage.i81.b1(this.a);
        }
        return listB1;
    }

    public final void a(String str) {
        y45.j(str, TtmlNode.ATTR_ID);
        synchronized (c) {
            this.b.remove(str);
            this.b.add(str);
        }
    }

    public r4(int i) {
        this();
    }
}
