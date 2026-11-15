package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.util.LruCache;
import defpackage.wn8;
import defpackage.y45;

public final class id1 {
    public static final a c = new a(0);
    private static volatile id1 d;
    private final jz1 a;
    private final o82 b;

    public static final class a {
        private a() {
        }

        public final id1 a(Context context) {
            y45.j(context, "context");
            id1 id1Var = id1.d;
            if (id1Var == null) {
                synchronized (this) {
                    id1Var = id1.d;
                    if (id1Var == null) {
                        id1Var = new id1(context);
                        id1.d = id1Var;
                    }
                }
            }
            return id1Var;
        }

        public a(int i) {
            this();
        }
    }

    public interface c {
        void a(String str, Bitmap bitmap);
    }

    public id1(Context context) {
        this(context, new hj0());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0026  */
    private static iq1 b(Context context) {
        int iIntValue;
        Integer numY;
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA == null || (numY = ju1VarA.y()) == null) {
            iIntValue = 4;
        } else {
            if (numY.intValue() == 0) {
                numY = null;
            }
            if (numY != null) {
                iIntValue = numY.intValue();
            } else {
                iIntValue = 4;
            }
        }
        iq1 iq1VarA = jq1.a(context, iIntValue);
        iq1VarA.a();
        return iq1VarA;
    }

    public final o82 c() {
        return this.b;
    }

    public static final class b implements oj0.b {
        private final LruCache<String, Bitmap> a;

        public b(jd1 jd1Var) {
            y45.j(jd1Var, "imageCache");
            this.a = jd1Var;
        }

        @Override
        public final Bitmap a(String str) {
            y45.j(str, "key");
            return this.a.get(str);
        }

        @Override
        public final void a(String str, Bitmap bitmap) {
            y45.j(str, "key");
            y45.j(bitmap, "bitmap");
            this.a.put(str, bitmap);
        }
    }

    private static jd1 a(Context context) {
        int iG;
        y45.j(context, "context");
        try {
            int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / ((long) 1024));
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            iG = wn8.g(iMaxMemory / 8, ((int) (((displayMetrics.widthPixels * displayMetrics.heightPixels) * displayMetrics.density) / 1024)) * 3);
        } catch (IllegalArgumentException unused) {
            int i = sp0.b;
            y45.j(new Object[0], "args");
            iG = 5120;
        }
        return new jd1(wn8.d(iG, 5120));
    }

    private id1(Context context, hj0 hj0Var) {
        jd1 jd1VarA = a(context);
        iq1 iq1VarB = b(context);
        b bVar = new b(jd1VarA);
        this.b = new o82(jd1VarA, hj0Var);
        this.a = new jz1(iq1VarB, bVar, hj0Var);
    }

    public final jz1 b() {
        return this.a;
    }
}
