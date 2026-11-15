package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;

public final class a implements ec.a {

    public static final ec.a f23664a = new a();

    private static final class C0337a implements dc.c {

        static final C0337a f23665a = new C0337a();

        private static final dc.b f23666b = dc.b.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f23667c = dc.b.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private static final dc.b f23668d = dc.b.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private static final dc.b f23669e = dc.b.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        private C0337a() {
        }

        @Override
        public void a(x8.a aVar, dc.d dVar) {
            dVar.a(f23666b, aVar.d());
            dVar.a(f23667c, aVar.c());
            dVar.a(f23668d, aVar.b());
            dVar.a(f23669e, aVar.a());
        }
    }

    private static final class b implements dc.c {

        static final b f23670a = new b();

        private static final dc.b f23671b = dc.b.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override
        public void a(x8.b bVar, dc.d dVar) {
            dVar.a(f23671b, bVar.a());
        }
    }

    private static final class c implements dc.c {

        static final c f23672a = new c();

        private static final dc.b f23673b = dc.b.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f23674c = dc.b.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private c() {
        }

        @Override
        public void a(LogEventDropped logEventDropped, dc.d dVar) {
            dVar.d(f23673b, logEventDropped.a());
            dVar.a(f23674c, logEventDropped.b());
        }
    }

    private static final class d implements dc.c {

        static final d f23675a = new d();

        private static final dc.b f23676b = dc.b.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f23677c = dc.b.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private d() {
        }

        @Override
        public void a(x8.c cVar, dc.d dVar) {
            dVar.a(f23676b, cVar.b());
            dVar.a(f23677c, cVar.a());
        }
    }

    private static final class e implements dc.c {

        static final e f23678a = new e();

        private static final dc.b f23679b = dc.b.d("clientMetrics");

        private e() {
        }

        @Override
        public void a(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            b(null, (dc.d) obj2);
        }

        public void b(m mVar, dc.d dVar) {
            throw null;
        }
    }

    private static final class f implements dc.c {

        static final f f23680a = new f();

        private static final dc.b f23681b = dc.b.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f23682c = dc.b.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private f() {
        }

        @Override
        public void a(x8.d dVar, dc.d dVar2) {
            dVar2.d(f23681b, dVar.a());
            dVar2.d(f23682c, dVar.b());
        }
    }

    private static final class g implements dc.c {

        static final g f23683a = new g();

        private static final dc.b f23684b = dc.b.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f23685c = dc.b.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private g() {
        }

        @Override
        public void a(x8.e eVar, dc.d dVar) {
            dVar.d(f23684b, eVar.b());
            dVar.d(f23685c, eVar.a());
        }
    }

    private a() {
    }

    @Override
    public void a(ec.b bVar) {
        bVar.a(m.class, e.f23678a);
        bVar.a(x8.a.class, C0337a.f23665a);
        bVar.a(x8.e.class, g.f23683a);
        bVar.a(x8.c.class, d.f23675a);
        bVar.a(LogEventDropped.class, c.f23672a);
        bVar.a(x8.b.class, b.f23670a);
        bVar.a(x8.d.class, f.f23680a);
    }
}
