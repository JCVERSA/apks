package com.yandex.mobile.ads.impl;

public interface h70 extends c62 {

    public static final class a {
        public final y52 a;
        public final int[] b;
        public final int c;

        public a(int i, y52 y52Var, int[] iArr) {
            if (iArr.length == 0) {
                et0.a("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.a = y52Var;
            this.b = iArr;
            this.c = i;
        }
    }

    public interface b {
    }

    void a(float f);

    default void a(boolean z) {
    }

    void c();

    void d();

    jc0 e();

    default void f() {
    }

    default void g() {
    }
}
