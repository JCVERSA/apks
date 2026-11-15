package com.hunantv.imgo.c.a.a;

class b {
    final Runnable a;
    int b;
    String c;
    int d;

    public static class a {
        private final Runnable a;
        private int b;
        private int c;
        private String d;

        public a(Runnable runnable) {
            this.a = runnable;
        }

        public a a(int i) {
            this.b = i;
            return this;
        }

        public a b(int i) {
            if (i < 0) {
                i = 0;
            } else if (i > 10) {
                i = 10;
            }
            this.c = i;
            return this;
        }

        public a a(String str) {
            this.d = str;
            return this;
        }

        public b a() {
            b bVar = new b(this.a);
            bVar.b = this.b;
            bVar.c = this.d;
            bVar.d = this.c;
            return bVar;
        }
    }

    public static final a a(Runnable runnable) {
        return new a(runnable);
    }

    private b(Runnable runnable) {
        this.c = "";
        this.a = runnable;
    }
}
