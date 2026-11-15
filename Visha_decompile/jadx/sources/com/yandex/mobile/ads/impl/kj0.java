package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.kj0;
import defpackage.y45;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class kj0 {
    private final oj0 a;
    private final id1.c b;

    /* JADX WARN: Illegal instructions before constructor call */
    public kj0(Context context) {
        id1 id1VarA = id1.c.a(context);
        this(context, id1VarA, id1VarA.b(), id1VarA.c());
    }

    public final void a(Set<xj0> set, gk0 gk0Var) {
        y45.j(set, "imageValuesToLoad");
        y45.j(gk0Var, "imagesFetchListener");
        if (set.isEmpty()) {
            gk0Var.a(kotlin.collections.a.l());
        } else {
            new a(this.a, set, gk0Var, new Handler(Looper.getMainLooper()), new AtomicInteger(set.size()), new j01()).a();
        }
    }

    public static final class a {
        private final oj0 a;
        private final Set<xj0> b;
        private final gk0 c;
        private final Handler d;
        private final AtomicInteger e;
        private final j01 f;

        public a(oj0 oj0Var, Set<xj0> set, gk0 gk0Var, Handler handler, AtomicInteger atomicInteger, j01 j01Var) {
            y45.j(oj0Var, "imageLoader");
            y45.j(set, "imageValues");
            y45.j(gk0Var, "imagesFetchListener");
            y45.j(handler, "handler");
            y45.j(atomicInteger, "imageCounter");
            y45.j(j01Var, "memoryUtils");
            this.a = oj0Var;
            this.b = set;
            this.c = gk0Var;
            this.d = handler;
            this.e = atomicInteger;
            this.f = j01Var;
        }

        public static final void a(a aVar, Map map) {
            if (aVar.e.decrementAndGet() == 0) {
                aVar.c.a(map);
            }
        }

        public static final class C0321a implements oj0.d {
            final Map<String, Bitmap> b;
            final xj0 c;

            public C0321a(Map<String, Bitmap> map, xj0 xj0Var) {
                this.b = map;
                this.c = xj0Var;
            }

            @Override
            public final void a(si2 si2Var) {
                y45.j(si2Var, "error");
                sp0.a(si2Var);
                a.a(a.this, this.b);
            }

            @Override
            public final void a(oj0.c cVar, boolean z) {
                y45.j(cVar, "response");
                String strF = this.c.f();
                Bitmap bitmapB = cVar.b();
                if (bitmapB != null) {
                    if (strF != null) {
                        this.b.put(strF, bitmapB);
                        a.this.c.a(strF, bitmapB);
                    }
                    a.a(a.this, this.b);
                }
            }
        }

        private final boolean a(xj0 xj0Var) {
            int iA = xj0Var.a();
            int iG = xj0Var.g();
            this.f.getClass();
            if (j01.a() >= (iA * iG * 4) + 1048576.0f) {
                return true;
            }
            sp0.d(new Object[0]);
            return false;
        }

        public final void a() {
            final HashMap map = new HashMap();
            for (final xj0 xj0Var : this.b) {
                final String strF = xj0Var.f();
                final int iA = xj0Var.a();
                final int iG = xj0Var.g();
                sp0.e(strF);
                if (a(xj0Var)) {
                    this.d.post(new Runnable() {
                        @Override
                        public final void run() {
                            kj0.a.a(this.b, strF, iG, iA, map, xj0Var);
                        }
                    });
                } else if (this.e.decrementAndGet() == 0) {
                    this.c.a(map);
                }
            }
        }

        public static final void a(a aVar, String str, int i, int i2, Map map, xj0 xj0Var) {
            y45.j(aVar, "this$0");
            y45.j(str, "$fetchUrl");
            y45.j(map, "$loadedImages");
            y45.j(xj0Var, "$imageValue");
            aVar.a.a(str, aVar.new C0321a(map, xj0Var), i, i2);
        }
    }

    public kj0(Context context, id1 id1Var, oj0 oj0Var, id1.c cVar) {
        y45.j(context, "context");
        y45.j(id1Var, "networkingImage");
        y45.j(oj0Var, "imageLoader");
        y45.j(cVar, "urlBitmapCache");
        this.a = oj0Var;
        this.b = cVar;
    }

    public final void a(LinkedHashMap linkedHashMap) {
        y45.j(linkedHashMap, "images");
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            this.b.a((String) entry.getKey(), (Bitmap) entry.getValue());
        }
    }
}
