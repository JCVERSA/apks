package com.hunantv.imgo.c.a.b;

import android.text.TextUtils;

class b {
    private com.hunantv.imgo.c.a.b.a a;

    public static class C0128b {
        final int a;
        int b;
        String c;
        com.hunantv.imgo.c.a d;
        int e;

        public C0128b(int i) {
            this.a = i;
        }

        public b a() {
            return new b(this);
        }
    }

    public com.hunantv.imgo.c.a.b.a a() {
        return this.a;
    }

    private b(C0128b c0128b) {
        this.a = new c(c0128b);
    }

    public static a a(int i) {
        return new a(i);
    }

    public static class a {
        final int a;
        int b;
        String c;
        com.hunantv.imgo.c.a d;
        int e;

        public a(int i) {
            this.a = i <= 0 ? 1 : i;
        }

        public a a(String str) {
            if (TextUtils.isEmpty(str)) {
                str = "ThreadPool";
            }
            this.c = str;
            return this;
        }

        public a b(int i) {
            this.e = i;
            return this;
        }

        public a a(int i) {
            this.b = i;
            return this;
        }

        public a a(com.hunantv.imgo.c.a aVar) {
            this.d = aVar;
            return this;
        }

        public b a() {
            C0128b c0128b = new C0128b(this.a);
            c0128b.c = this.c;
            c0128b.d = this.d;
            c0128b.b = this.b;
            c0128b.e = this.e;
            return c0128b.a();
        }
    }
}
