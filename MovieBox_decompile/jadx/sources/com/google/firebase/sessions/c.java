package com.google.firebase.sessions;

public final class c implements ec.a {

    public static final ec.a f31818a = new c();

    private static final class a implements dc.c {

        static final a f31819a = new a();

        private static final dc.b f31820b = dc.b.d("packageName");

        private static final dc.b f31821c = dc.b.d("versionName");

        private static final dc.b f31822d = dc.b.d("appBuildVersion");

        private static final dc.b f31823e = dc.b.d("deviceManufacturer");

        private static final dc.b f31824f = dc.b.d("currentProcessDetails");

        private static final dc.b f31825g = dc.b.d("appProcessDetails");

        private a() {
        }

        @Override
        public void a(com.google.firebase.sessions.a aVar, dc.d dVar) {
            dVar.a(f31820b, aVar.e());
            dVar.a(f31821c, aVar.f());
            dVar.a(f31822d, aVar.a());
            dVar.a(f31823e, aVar.d());
            dVar.a(f31824f, aVar.c());
            dVar.a(f31825g, aVar.b());
        }
    }

    private static final class b implements dc.c {

        static final b f31826a = new b();

        private static final dc.b f31827b = dc.b.d("appId");

        private static final dc.b f31828c = dc.b.d("deviceModel");

        private static final dc.b f31829d = dc.b.d("sessionSdkVersion");

        private static final dc.b f31830e = dc.b.d("osVersion");

        private static final dc.b f31831f = dc.b.d("logEnvironment");

        private static final dc.b f31832g = dc.b.d("androidAppInfo");

        private b() {
        }

        @Override
        public void a(com.google.firebase.sessions.b bVar, dc.d dVar) {
            dVar.a(f31827b, bVar.b());
            dVar.a(f31828c, bVar.c());
            dVar.a(f31829d, bVar.f());
            dVar.a(f31830e, bVar.e());
            dVar.a(f31831f, bVar.d());
            dVar.a(f31832g, bVar.a());
        }
    }

    private static final class C0425c implements dc.c {

        static final C0425c f31833a = new C0425c();

        private static final dc.b f31834b = dc.b.d("performance");

        private static final dc.b f31835c = dc.b.d("crashlytics");

        private static final dc.b f31836d = dc.b.d("sessionSamplingRate");

        private C0425c() {
        }

        @Override
        public void a(com.google.firebase.sessions.d dVar, dc.d dVar2) {
            dVar2.a(f31834b, dVar.b());
            dVar2.a(f31835c, dVar.a());
            dVar2.f(f31836d, dVar.c());
        }
    }

    private static final class d implements dc.c {

        static final d f31837a = new d();

        private static final dc.b f31838b = dc.b.d("processName");

        private static final dc.b f31839c = dc.b.d("pid");

        private static final dc.b f31840d = dc.b.d("importance");

        private static final dc.b f31841e = dc.b.d("defaultProcess");

        private d() {
        }

        @Override
        public void a(p pVar, dc.d dVar) {
            dVar.a(f31838b, pVar.c());
            dVar.e(f31839c, pVar.b());
            dVar.e(f31840d, pVar.a());
            dVar.c(f31841e, pVar.d());
        }
    }

    private static final class e implements dc.c {

        static final e f31842a = new e();

        private static final dc.b f31843b = dc.b.d("eventType");

        private static final dc.b f31844c = dc.b.d("sessionData");

        private static final dc.b f31845d = dc.b.d("applicationInfo");

        private e() {
        }

        @Override
        public void a(u uVar, dc.d dVar) {
            dVar.a(f31843b, uVar.b());
            dVar.a(f31844c, uVar.c());
            dVar.a(f31845d, uVar.a());
        }
    }

    private static final class f implements dc.c {

        static final f f31846a = new f();

        private static final dc.b f31847b = dc.b.d("sessionId");

        private static final dc.b f31848c = dc.b.d("firstSessionId");

        private static final dc.b f31849d = dc.b.d("sessionIndex");

        private static final dc.b f31850e = dc.b.d("eventTimestampUs");

        private static final dc.b f31851f = dc.b.d("dataCollectionStatus");

        private static final dc.b f31852g = dc.b.d("firebaseInstallationId");

        private static final dc.b f31853h = dc.b.d("firebaseAuthenticationToken");

        private f() {
        }

        @Override
        public void a(x xVar, dc.d dVar) {
            dVar.a(f31847b, xVar.f());
            dVar.a(f31848c, xVar.e());
            dVar.e(f31849d, xVar.g());
            dVar.d(f31850e, xVar.b());
            dVar.a(f31851f, xVar.a());
            dVar.a(f31852g, xVar.d());
            dVar.a(f31853h, xVar.c());
        }
    }

    private c() {
    }

    @Override
    public void a(ec.b bVar) {
        bVar.a(u.class, e.f31842a);
        bVar.a(x.class, f.f31846a);
        bVar.a(com.google.firebase.sessions.d.class, C0425c.f31833a);
        bVar.a(com.google.firebase.sessions.b.class, b.f31826a);
        bVar.a(com.google.firebase.sessions.a.class, a.f31819a);
        bVar.a(p.class, d.f31837a);
    }
}
