package com.google.android.datatransport.cct.internal;

import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.miniapp.BuildConfig;
import com.google.android.libraries.places.api.model.PlaceTypes;

public final class b implements ec.a {

    public static final ec.a f23536a = new b();

    private static final class a implements dc.c {

        static final a f23537a = new a();

        private static final dc.b f23538b = dc.b.d("sdkVersion");

        private static final dc.b f23539c = dc.b.d("model");

        private static final dc.b f23540d = dc.b.d("hardware");

        private static final dc.b f23541e = dc.b.d("device");

        private static final dc.b f23542f = dc.b.d(BuildConfig.FLAVOR_sdkMode);

        private static final dc.b f23543g = dc.b.d("osBuild");

        private static final dc.b f23544h = dc.b.d("manufacturer");

        private static final dc.b f23545i = dc.b.d("fingerprint");

        private static final dc.b f23546j = dc.b.d("locale");

        private static final dc.b f23547k = dc.b.d(PlaceTypes.COUNTRY);

        private static final dc.b f23548l = dc.b.d("mccMnc");

        private static final dc.b f23549m = dc.b.d("applicationBuild");

        private a() {
        }

        @Override
        public void a(com.google.android.datatransport.cct.internal.a aVar, dc.d dVar) {
            dVar.a(f23538b, aVar.m());
            dVar.a(f23539c, aVar.j());
            dVar.a(f23540d, aVar.f());
            dVar.a(f23541e, aVar.d());
            dVar.a(f23542f, aVar.l());
            dVar.a(f23543g, aVar.k());
            dVar.a(f23544h, aVar.h());
            dVar.a(f23545i, aVar.e());
            dVar.a(f23546j, aVar.g());
            dVar.a(f23547k, aVar.c());
            dVar.a(f23548l, aVar.i());
            dVar.a(f23549m, aVar.b());
        }
    }

    private static final class C0336b implements dc.c {

        static final C0336b f23550a = new C0336b();

        private static final dc.b f23551b = dc.b.d("logRequest");

        private C0336b() {
        }

        @Override
        public void a(m mVar, dc.d dVar) {
            dVar.a(f23551b, mVar.c());
        }
    }

    private static final class c implements dc.c {

        static final c f23552a = new c();

        private static final dc.b f23553b = dc.b.d("clientType");

        private static final dc.b f23554c = dc.b.d("androidClientInfo");

        private c() {
        }

        @Override
        public void a(ClientInfo clientInfo, dc.d dVar) {
            dVar.a(f23553b, clientInfo.c());
            dVar.a(f23554c, clientInfo.b());
        }
    }

    private static final class d implements dc.c {

        static final d f23555a = new d();

        private static final dc.b f23556b = dc.b.d("privacyContext");

        private static final dc.b f23557c = dc.b.d("productIdOrigin");

        private d() {
        }

        @Override
        public void a(ComplianceData complianceData, dc.d dVar) {
            dVar.a(f23556b, complianceData.b());
            dVar.a(f23557c, complianceData.c());
        }
    }

    private static final class e implements dc.c {

        static final e f23558a = new e();

        private static final dc.b f23559b = dc.b.d("clearBlob");

        private static final dc.b f23560c = dc.b.d("encryptedBlob");

        private e() {
        }

        @Override
        public void a(n nVar, dc.d dVar) {
            dVar.a(f23559b, nVar.b());
            dVar.a(f23560c, nVar.c());
        }
    }

    private static final class f implements dc.c {

        static final f f23561a = new f();

        private static final dc.b f23562b = dc.b.d("originAssociatedProductId");

        private f() {
        }

        @Override
        public void a(o oVar, dc.d dVar) {
            dVar.a(f23562b, oVar.b());
        }
    }

    private static final class g implements dc.c {

        static final g f23563a = new g();

        private static final dc.b f23564b = dc.b.d("prequest");

        private g() {
        }

        @Override
        public void a(p pVar, dc.d dVar) {
            dVar.a(f23564b, pVar.b());
        }
    }

    private static final class h implements dc.c {

        static final h f23565a = new h();

        private static final dc.b f23566b = dc.b.d("eventTimeMs");

        private static final dc.b f23567c = dc.b.d("eventCode");

        private static final dc.b f23568d = dc.b.d("complianceData");

        private static final dc.b f23569e = dc.b.d("eventUptimeMs");

        private static final dc.b f23570f = dc.b.d("sourceExtension");

        private static final dc.b f23571g = dc.b.d("sourceExtensionJsonProto3");

        private static final dc.b f23572h = dc.b.d("timezoneOffsetSeconds");

        private static final dc.b f23573i = dc.b.d("networkConnectionInfo");

        private static final dc.b f23574j = dc.b.d("experimentIds");

        private h() {
        }

        @Override
        public void a(q qVar, dc.d dVar) {
            dVar.d(f23566b, qVar.d());
            dVar.a(f23567c, qVar.c());
            dVar.a(f23568d, qVar.b());
            dVar.d(f23569e, qVar.e());
            dVar.a(f23570f, qVar.h());
            dVar.a(f23571g, qVar.i());
            dVar.d(f23572h, qVar.j());
            dVar.a(f23573i, qVar.g());
            dVar.a(f23574j, qVar.f());
        }
    }

    private static final class i implements dc.c {

        static final i f23575a = new i();

        private static final dc.b f23576b = dc.b.d("requestTimeMs");

        private static final dc.b f23577c = dc.b.d("requestUptimeMs");

        private static final dc.b f23578d = dc.b.d("clientInfo");

        private static final dc.b f23579e = dc.b.d("logSource");

        private static final dc.b f23580f = dc.b.d("logSourceName");

        private static final dc.b f23581g = dc.b.d("logEvent");

        private static final dc.b f23582h = dc.b.d("qosTier");

        private i() {
        }

        @Override
        public void a(r rVar, dc.d dVar) {
            dVar.d(f23576b, rVar.g());
            dVar.d(f23577c, rVar.h());
            dVar.a(f23578d, rVar.b());
            dVar.a(f23579e, rVar.d());
            dVar.a(f23580f, rVar.e());
            dVar.a(f23581g, rVar.c());
            dVar.a(f23582h, rVar.f());
        }
    }

    private static final class j implements dc.c {

        static final j f23583a = new j();

        private static final dc.b f23584b = dc.b.d(NetworkBridge.KEY_NETWORK_TYPE);

        private static final dc.b f23585c = dc.b.d("mobileSubtype");

        private j() {
        }

        @Override
        public void a(NetworkConnectionInfo networkConnectionInfo, dc.d dVar) {
            dVar.a(f23584b, networkConnectionInfo.c());
            dVar.a(f23585c, networkConnectionInfo.b());
        }
    }

    private b() {
    }

    @Override
    public void a(ec.b bVar) {
        C0336b c0336b = C0336b.f23550a;
        bVar.a(m.class, c0336b);
        bVar.a(com.google.android.datatransport.cct.internal.d.class, c0336b);
        i iVar = i.f23575a;
        bVar.a(r.class, iVar);
        bVar.a(k.class, iVar);
        c cVar = c.f23552a;
        bVar.a(ClientInfo.class, cVar);
        bVar.a(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.f23537a;
        bVar.a(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.a(com.google.android.datatransport.cct.internal.c.class, aVar);
        h hVar = h.f23565a;
        bVar.a(q.class, hVar);
        bVar.a(com.google.android.datatransport.cct.internal.j.class, hVar);
        d dVar = d.f23555a;
        bVar.a(ComplianceData.class, dVar);
        bVar.a(com.google.android.datatransport.cct.internal.f.class, dVar);
        g gVar = g.f23563a;
        bVar.a(p.class, gVar);
        bVar.a(com.google.android.datatransport.cct.internal.i.class, gVar);
        f fVar = f.f23561a;
        bVar.a(o.class, fVar);
        bVar.a(com.google.android.datatransport.cct.internal.h.class, fVar);
        j jVar = j.f23583a;
        bVar.a(NetworkConnectionInfo.class, jVar);
        bVar.a(l.class, jVar);
        e eVar = e.f23558a;
        bVar.a(n.class, eVar);
        bVar.a(com.google.android.datatransport.cct.internal.g.class, eVar);
    }
}
