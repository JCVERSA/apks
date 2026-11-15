package com.yandex.mobile.ads.impl;

final class hm1 {
    public final a a;
    public final a b;
    public final int c;
    public final boolean d;

    public static final class a {
        private final b[] a;

        public a(b... bVarArr) {
            this.a = bVarArr;
        }

        public final b a() {
            return this.a[0];
        }

        public final int b() {
            return this.a.length;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final float[] c;
        public final float[] d;

        public b(int i, float[] fArr, float[] fArr2, int i2) {
            this.a = i;
            hg.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.c = fArr;
            this.d = fArr2;
            this.b = i2;
        }

        public final int a() {
            return this.c.length / 3;
        }
    }

    public hm1(a aVar, a aVar2, int i) {
        this.a = aVar;
        this.b = aVar2;
        this.c = i;
        this.d = aVar == aVar2;
    }
}
