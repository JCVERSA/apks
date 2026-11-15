package com.transsion.transfer.androidasync.http;

public interface g {

    public static class a extends e {

        public st.b f53280c;

        public com.transsion.transfer.androidasync.future.a f53281d;

        public String f53282e;
    }

    public static class b extends d {

        public com.transsion.transfer.androidasync.p f53283j;
    }

    public static class c extends a {

        public com.transsion.transfer.androidasync.j f53284f;

        public i f53285g;

        public st.a f53286h;

        public st.a f53287i;
    }

    public static class d extends f {
    }

    public static class e {

        public com.transsion.transfer.androidasync.util.e f53288a = new com.transsion.transfer.androidasync.util.e();

        public j f53289b;
    }

    public static class f extends c {
    }

    public static class C0647g extends h {

        public Exception f53290k;
    }

    public static class h extends b {
    }

    public interface i {
        com.transsion.transfer.androidasync.s E();

        int b();

        i c(int i10);

        Headers e();

        i f(com.transsion.transfer.androidasync.s sVar);

        i m(String str);

        i o(com.transsion.transfer.androidasync.p pVar);

        String protocol();

        i r(String str);

        com.transsion.transfer.androidasync.j socket();

        i v(Headers headers);
    }

    void a(e eVar);

    void b(C0647g c0647g);

    void c(f fVar);

    void d(b bVar);

    com.transsion.transfer.androidasync.future.a e(a aVar);

    boolean f(c cVar);

    void g(d dVar);

    j h(h hVar);
}
