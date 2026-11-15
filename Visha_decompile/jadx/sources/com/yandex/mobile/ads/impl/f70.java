package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class f70 {
    private static final Object b = new Object();
    private static volatile f70 c;
    public static final int d = 0;
    private final e70 a;

    public static final class a {
        public static f70 a() {
            f70 f70Var;
            f70 f70Var2 = f70.c;
            if (f70Var2 != null) {
                return f70Var2;
            }
            synchronized (f70.b) {
                f70Var = f70.c;
                if (f70Var == null) {
                    f70Var = new f70(0);
                    f70.c = f70Var;
                }
            }
            return f70Var;
        }
    }

    private f70() {
        this.a = new e70(nf2.a());
    }

    public final sa1 a(zb2<?> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        return this.a.get(zb2Var);
    }

    public f70(int i) {
        this();
    }

    public final void a(zb2 zb2Var, i70 i70Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(i70Var, "exoVideoAdPlayer");
        this.a.put(zb2Var, i70Var);
    }
}
