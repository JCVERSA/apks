package com.hunantv.imgo.c;

import com.hunantv.imgo.c.a.b.f;

public class b {
    private Runnable a;
    private int b;
    private String c;
    private String d;
    private int e;

    public static class a {
        private Runnable a;
        private int b;
        private String c;
        private String d;
        private int e;

        public a a(int i) {
            this.b = i;
            return this;
        }

        public a b(String str) {
            this.d = str;
            return this;
        }

        private a() {
        }

        public a a(Runnable runnable) {
            this.a = runnable;
            return this;
        }

        public a b(int i) {
            this.e = i;
            return this;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }

        public b a() {
            b bVar = new b();
            bVar.a = this.a;
            bVar.c = this.c;
            bVar.b = this.b;
            bVar.d = this.d;
            bVar.e = this.e;
            return bVar;
        }
    }

    public static a c() {
        return new a();
    }

    private b() {
    }

    public void b() {
        f.b(this.c);
    }

    public void a() {
        f.a(this.d, this.a, this.c, this.b, this.e);
    }
}
