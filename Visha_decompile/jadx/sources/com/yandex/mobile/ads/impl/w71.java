package com.yandex.mobile.ads.impl;

public final class w71 {
    private static final Object a = new Object();
    private static volatile w71 b;
    public static final int c = 0;

    public static final class a {
        public static w71 a() {
            w71 w71Var;
            w71 w71Var2 = w71.b;
            if (w71Var2 != null) {
                return w71Var2;
            }
            synchronized (w71.a) {
                w71Var = w71.b;
                if (w71Var == null) {
                    w71Var = new w71(0);
                    w71.b = w71Var;
                }
            }
            return w71Var;
        }
    }

    private w71() {
    }

    public final boolean c() {
        return true;
    }

    public w71(int i) {
        this();
    }
}
