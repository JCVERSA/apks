package com.google.android.datatransport.runtime;

abstract class n {

    public static abstract class a {
        public abstract n a();

        abstract a b(t8.c cVar);

        abstract a c(t8.d dVar);

        abstract a d(t8.g gVar);

        public abstract a e(o oVar);

        public abstract a f(String str);
    }

    n() {
    }

    public static a a() {
        return new c.b();
    }

    public abstract t8.c b();

    abstract t8.d c();

    public byte[] d() {
        return (byte[]) e().apply(c().c());
    }

    abstract t8.g e();

    public abstract o f();

    public abstract String g();
}
