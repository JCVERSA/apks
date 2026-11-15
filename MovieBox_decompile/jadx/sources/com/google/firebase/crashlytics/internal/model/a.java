package com.google.firebase.crashlytics.internal.model;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public final class a implements ec.a {

    public static final ec.a f30486a = new a();

    private static final class C0413a implements dc.c {

        static final C0413a f30487a = new C0413a();

        private static final dc.b f30488b = dc.b.d("arch");

        private static final dc.b f30489c = dc.b.d("libraryName");

        private static final dc.b f30490d = dc.b.d("buildId");

        private C0413a() {
        }

        @Override
        public void a(CrashlyticsReport.a.AbstractC0395a abstractC0395a, dc.d dVar) {
            dVar.a(f30488b, abstractC0395a.b());
            dVar.a(f30489c, abstractC0395a.d());
            dVar.a(f30490d, abstractC0395a.c());
        }
    }

    private static final class b implements dc.c {

        static final b f30491a = new b();

        private static final dc.b f30492b = dc.b.d("pid");

        private static final dc.b f30493c = dc.b.d("processName");

        private static final dc.b f30494d = dc.b.d("reasonCode");

        private static final dc.b f30495e = dc.b.d("importance");

        private static final dc.b f30496f = dc.b.d("pss");

        private static final dc.b f30497g = dc.b.d("rss");

        private static final dc.b f30498h = dc.b.d(CampaignEx.JSON_KEY_TIMESTAMP);

        private static final dc.b f30499i = dc.b.d("traceFile");

        private static final dc.b f30500j = dc.b.d("buildIdMappingForArch");

        private b() {
        }

        @Override
        public void a(CrashlyticsReport.a aVar, dc.d dVar) {
            dVar.e(f30492b, aVar.d());
            dVar.a(f30493c, aVar.e());
            dVar.e(f30494d, aVar.g());
            dVar.e(f30495e, aVar.c());
            dVar.d(f30496f, aVar.f());
            dVar.d(f30497g, aVar.h());
            dVar.d(f30498h, aVar.i());
            dVar.a(f30499i, aVar.j());
            dVar.a(f30500j, aVar.b());
        }
    }

    private static final class c implements dc.c {

        static final c f30501a = new c();

        private static final dc.b f30502b = dc.b.d("key");

        private static final dc.b f30503c = dc.b.d(AppMeasurementSdk.ConditionalUserProperty.VALUE);

        private c() {
        }

        @Override
        public void a(CrashlyticsReport.c cVar, dc.d dVar) {
            dVar.a(f30502b, cVar.b());
            dVar.a(f30503c, cVar.c());
        }
    }

    private static final class d implements dc.c {

        static final d f30504a = new d();

        private static final dc.b f30505b = dc.b.d("sdkVersion");

        private static final dc.b f30506c = dc.b.d("gmpAppId");

        private static final dc.b f30507d = dc.b.d(TrackingKey.PLATFORM);

        private static final dc.b f30508e = dc.b.d("installationUuid");

        private static final dc.b f30509f = dc.b.d("firebaseInstallationId");

        private static final dc.b f30510g = dc.b.d("firebaseAuthenticationToken");

        private static final dc.b f30511h = dc.b.d("appQualitySessionId");

        private static final dc.b f30512i = dc.b.d("buildVersion");

        private static final dc.b f30513j = dc.b.d("displayVersion");

        private static final dc.b f30514k = dc.b.d("session");

        private static final dc.b f30515l = dc.b.d("ndkPayload");

        private static final dc.b f30516m = dc.b.d("appExitInfo");

        private d() {
        }

        @Override
        public void a(CrashlyticsReport crashlyticsReport, dc.d dVar) {
            dVar.a(f30505b, crashlyticsReport.m());
            dVar.a(f30506c, crashlyticsReport.i());
            dVar.e(f30507d, crashlyticsReport.l());
            dVar.a(f30508e, crashlyticsReport.j());
            dVar.a(f30509f, crashlyticsReport.h());
            dVar.a(f30510g, crashlyticsReport.g());
            dVar.a(f30511h, crashlyticsReport.d());
            dVar.a(f30512i, crashlyticsReport.e());
            dVar.a(f30513j, crashlyticsReport.f());
            dVar.a(f30514k, crashlyticsReport.n());
            dVar.a(f30515l, crashlyticsReport.k());
            dVar.a(f30516m, crashlyticsReport.c());
        }
    }

    private static final class e implements dc.c {

        static final e f30517a = new e();

        private static final dc.b f30518b = dc.b.d("files");

        private static final dc.b f30519c = dc.b.d("orgId");

        private e() {
        }

        @Override
        public void a(CrashlyticsReport.d dVar, dc.d dVar2) {
            dVar2.a(f30518b, dVar.b());
            dVar2.a(f30519c, dVar.c());
        }
    }

    private static final class f implements dc.c {

        static final f f30520a = new f();

        private static final dc.b f30521b = dc.b.d("filename");

        private static final dc.b f30522c = dc.b.d("contents");

        private f() {
        }

        @Override
        public void a(CrashlyticsReport.d.b bVar, dc.d dVar) {
            dVar.a(f30521b, bVar.c());
            dVar.a(f30522c, bVar.b());
        }
    }

    private static final class g implements dc.c {

        static final g f30523a = new g();

        private static final dc.b f30524b = dc.b.d("identifier");

        private static final dc.b f30525c = dc.b.d("version");

        private static final dc.b f30526d = dc.b.d("displayVersion");

        private static final dc.b f30527e = dc.b.d("organization");

        private static final dc.b f30528f = dc.b.d("installationUuid");

        private static final dc.b f30529g = dc.b.d("developmentPlatform");

        private static final dc.b f30530h = dc.b.d("developmentPlatformVersion");

        private g() {
        }

        @Override
        public void a(CrashlyticsReport.e.a aVar, dc.d dVar) {
            dVar.a(f30524b, aVar.e());
            dVar.a(f30525c, aVar.h());
            dVar.a(f30526d, aVar.d());
            dVar.a(f30527e, aVar.g());
            dVar.a(f30528f, aVar.f());
            dVar.a(f30529g, aVar.b());
            dVar.a(f30530h, aVar.c());
        }
    }

    private static final class h implements dc.c {

        static final h f30531a = new h();

        private static final dc.b f30532b = dc.b.d("clsId");

        private h() {
        }

        @Override
        public void a(CrashlyticsReport.e.a.b bVar, dc.d dVar) {
            dVar.a(f30532b, bVar.a());
        }
    }

    private static final class i implements dc.c {

        static final i f30533a = new i();

        private static final dc.b f30534b = dc.b.d("arch");

        private static final dc.b f30535c = dc.b.d("model");

        private static final dc.b f30536d = dc.b.d("cores");

        private static final dc.b f30537e = dc.b.d("ram");

        private static final dc.b f30538f = dc.b.d("diskSpace");

        private static final dc.b f30539g = dc.b.d("simulator");

        private static final dc.b f30540h = dc.b.d("state");

        private static final dc.b f30541i = dc.b.d("manufacturer");

        private static final dc.b f30542j = dc.b.d("modelClass");

        private i() {
        }

        @Override
        public void a(CrashlyticsReport.e.c cVar, dc.d dVar) {
            dVar.e(f30534b, cVar.b());
            dVar.a(f30535c, cVar.f());
            dVar.e(f30536d, cVar.c());
            dVar.d(f30537e, cVar.h());
            dVar.d(f30538f, cVar.d());
            dVar.c(f30539g, cVar.j());
            dVar.e(f30540h, cVar.i());
            dVar.a(f30541i, cVar.e());
            dVar.a(f30542j, cVar.g());
        }
    }

    private static final class j implements dc.c {

        static final j f30543a = new j();

        private static final dc.b f30544b = dc.b.d("generator");

        private static final dc.b f30545c = dc.b.d("identifier");

        private static final dc.b f30546d = dc.b.d("appQualitySessionId");

        private static final dc.b f30547e = dc.b.d("startedAt");

        private static final dc.b f30548f = dc.b.d("endedAt");

        private static final dc.b f30549g = dc.b.d("crashed");

        private static final dc.b f30550h = dc.b.d("app");

        private static final dc.b f30551i = dc.b.d("user");

        private static final dc.b f30552j = dc.b.d("os");

        private static final dc.b f30553k = dc.b.d("device");

        private static final dc.b f30554l = dc.b.d("events");

        private static final dc.b f30555m = dc.b.d("generatorType");

        private j() {
        }

        @Override
        public void a(CrashlyticsReport.e eVar, dc.d dVar) {
            dVar.a(f30544b, eVar.g());
            dVar.a(f30545c, eVar.j());
            dVar.a(f30546d, eVar.c());
            dVar.d(f30547e, eVar.l());
            dVar.a(f30548f, eVar.e());
            dVar.c(f30549g, eVar.n());
            dVar.a(f30550h, eVar.b());
            dVar.a(f30551i, eVar.m());
            dVar.a(f30552j, eVar.k());
            dVar.a(f30553k, eVar.d());
            dVar.a(f30554l, eVar.f());
            dVar.e(f30555m, eVar.h());
        }
    }

    private static final class k implements dc.c {

        static final k f30556a = new k();

        private static final dc.b f30557b = dc.b.d("execution");

        private static final dc.b f30558c = dc.b.d("customAttributes");

        private static final dc.b f30559d = dc.b.d("internalKeys");

        private static final dc.b f30560e = dc.b.d("background");

        private static final dc.b f30561f = dc.b.d("currentProcessDetails");

        private static final dc.b f30562g = dc.b.d("appProcessDetails");

        private static final dc.b f30563h = dc.b.d("uiOrientation");

        private k() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a aVar, dc.d dVar) {
            dVar.a(f30557b, aVar.f());
            dVar.a(f30558c, aVar.e());
            dVar.a(f30559d, aVar.g());
            dVar.a(f30560e, aVar.c());
            dVar.a(f30561f, aVar.d());
            dVar.a(f30562g, aVar.b());
            dVar.e(f30563h, aVar.h());
        }
    }

    private static final class l implements dc.c {

        static final l f30564a = new l();

        private static final dc.b f30565b = dc.b.d("baseAddress");

        private static final dc.b f30566c = dc.b.d("size");

        private static final dc.b f30567d = dc.b.d("name");

        private static final dc.b f30568e = dc.b.d("uuid");

        private l() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0399a abstractC0399a, dc.d dVar) {
            dVar.d(f30565b, abstractC0399a.b());
            dVar.d(f30566c, abstractC0399a.d());
            dVar.a(f30567d, abstractC0399a.c());
            dVar.a(f30568e, abstractC0399a.f());
        }
    }

    private static final class m implements dc.c {

        static final m f30569a = new m();

        private static final dc.b f30570b = dc.b.d("threads");

        private static final dc.b f30571c = dc.b.d("exception");

        private static final dc.b f30572d = dc.b.d("appExitInfo");

        private static final dc.b f30573e = dc.b.d("signal");

        private static final dc.b f30574f = dc.b.d("binaries");

        private m() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b bVar, dc.d dVar) {
            dVar.a(f30570b, bVar.f());
            dVar.a(f30571c, bVar.d());
            dVar.a(f30572d, bVar.b());
            dVar.a(f30573e, bVar.e());
            dVar.a(f30574f, bVar.c());
        }
    }

    private static final class n implements dc.c {

        static final n f30575a = new n();

        private static final dc.b f30576b = dc.b.d(NativeComponentConstants.KEY_COMPONENT_TYPE);

        private static final dc.b f30577c = dc.b.d("reason");

        private static final dc.b f30578d = dc.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        private static final dc.b f30579e = dc.b.d("causedBy");

        private static final dc.b f30580f = dc.b.d("overflowCount");

        private n() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b.c cVar, dc.d dVar) {
            dVar.a(f30576b, cVar.f());
            dVar.a(f30577c, cVar.e());
            dVar.a(f30578d, cVar.c());
            dVar.a(f30579e, cVar.b());
            dVar.e(f30580f, cVar.d());
        }
    }

    private static final class o implements dc.c {

        static final o f30581a = new o();

        private static final dc.b f30582b = dc.b.d("name");

        private static final dc.b f30583c = dc.b.d("code");

        private static final dc.b f30584d = dc.b.d(PlaceTypes.ADDRESS);

        private o() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0403d abstractC0403d, dc.d dVar) {
            dVar.a(f30582b, abstractC0403d.d());
            dVar.a(f30583c, abstractC0403d.c());
            dVar.d(f30584d, abstractC0403d.b());
        }
    }

    private static final class p implements dc.c {

        static final p f30585a = new p();

        private static final dc.b f30586b = dc.b.d("name");

        private static final dc.b f30587c = dc.b.d("importance");

        private static final dc.b f30588d = dc.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        private p() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0405e abstractC0405e, dc.d dVar) {
            dVar.a(f30586b, abstractC0405e.d());
            dVar.e(f30587c, abstractC0405e.c());
            dVar.a(f30588d, abstractC0405e.b());
        }
    }

    private static final class q implements dc.c {

        static final q f30589a = new q();

        private static final dc.b f30590b = dc.b.d("pc");

        private static final dc.b f30591c = dc.b.d("symbol");

        private static final dc.b f30592d = dc.b.d(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE);

        private static final dc.b f30593e = dc.b.d("offset");

        private static final dc.b f30594f = dc.b.d("importance");

        private q() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b abstractC0407b, dc.d dVar) {
            dVar.d(f30590b, abstractC0407b.e());
            dVar.a(f30591c, abstractC0407b.f());
            dVar.a(f30592d, abstractC0407b.b());
            dVar.d(f30593e, abstractC0407b.d());
            dVar.e(f30594f, abstractC0407b.c());
        }
    }

    private static final class r implements dc.c {

        static final r f30595a = new r();

        private static final dc.b f30596b = dc.b.d("processName");

        private static final dc.b f30597c = dc.b.d("pid");

        private static final dc.b f30598d = dc.b.d("importance");

        private static final dc.b f30599e = dc.b.d("defaultProcess");

        private r() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.a.c cVar, dc.d dVar) {
            dVar.a(f30596b, cVar.d());
            dVar.e(f30597c, cVar.c());
            dVar.e(f30598d, cVar.b());
            dVar.c(f30599e, cVar.e());
        }
    }

    private static final class s implements dc.c {

        static final s f30600a = new s();

        private static final dc.b f30601b = dc.b.d("batteryLevel");

        private static final dc.b f30602c = dc.b.d("batteryVelocity");

        private static final dc.b f30603d = dc.b.d("proximityOn");

        private static final dc.b f30604e = dc.b.d("orientation");

        private static final dc.b f30605f = dc.b.d("ramUsed");

        private static final dc.b f30606g = dc.b.d("diskUsed");

        private s() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.c cVar, dc.d dVar) {
            dVar.a(f30601b, cVar.b());
            dVar.e(f30602c, cVar.c());
            dVar.c(f30603d, cVar.g());
            dVar.e(f30604e, cVar.e());
            dVar.d(f30605f, cVar.f());
            dVar.d(f30606g, cVar.d());
        }
    }

    private static final class t implements dc.c {

        static final t f30607a = new t();

        private static final dc.b f30608b = dc.b.d(CampaignEx.JSON_KEY_TIMESTAMP);

        private static final dc.b f30609c = dc.b.d(NativeComponentConstants.KEY_COMPONENT_TYPE);

        private static final dc.b f30610d = dc.b.d("app");

        private static final dc.b f30611e = dc.b.d("device");

        private static final dc.b f30612f = dc.b.d("log");

        private static final dc.b f30613g = dc.b.d("rollouts");

        private t() {
        }

        @Override
        public void a(CrashlyticsReport.e.d dVar, dc.d dVar2) {
            dVar2.d(f30608b, dVar.f());
            dVar2.a(f30609c, dVar.g());
            dVar2.a(f30610d, dVar.b());
            dVar2.a(f30611e, dVar.c());
            dVar2.a(f30612f, dVar.d());
            dVar2.a(f30613g, dVar.e());
        }
    }

    private static final class u implements dc.c {

        static final u f30614a = new u();

        private static final dc.b f30615b = dc.b.d("content");

        private u() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.AbstractC0410d abstractC0410d, dc.d dVar) {
            dVar.a(f30615b, abstractC0410d.b());
        }
    }

    private static final class v implements dc.c {

        static final v f30616a = new v();

        private static final dc.b f30617b = dc.b.d("rolloutVariant");

        private static final dc.b f30618c = dc.b.d("parameterKey");

        private static final dc.b f30619d = dc.b.d("parameterValue");

        private static final dc.b f30620e = dc.b.d("templateVersion");

        private v() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.AbstractC0411e abstractC0411e, dc.d dVar) {
            dVar.a(f30617b, abstractC0411e.d());
            dVar.a(f30618c, abstractC0411e.b());
            dVar.a(f30619d, abstractC0411e.c());
            dVar.d(f30620e, abstractC0411e.e());
        }
    }

    private static final class w implements dc.c {

        static final w f30621a = new w();

        private static final dc.b f30622b = dc.b.d("rolloutId");

        private static final dc.b f30623c = dc.b.d("variantId");

        private w() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.AbstractC0411e.b bVar, dc.d dVar) {
            dVar.a(f30622b, bVar.b());
            dVar.a(f30623c, bVar.c());
        }
    }

    private static final class x implements dc.c {

        static final x f30624a = new x();

        private static final dc.b f30625b = dc.b.d("assignments");

        private x() {
        }

        @Override
        public void a(CrashlyticsReport.e.d.f fVar, dc.d dVar) {
            dVar.a(f30625b, fVar.b());
        }
    }

    private static final class y implements dc.c {

        static final y f30626a = new y();

        private static final dc.b f30627b = dc.b.d(TrackingKey.PLATFORM);

        private static final dc.b f30628c = dc.b.d("version");

        private static final dc.b f30629d = dc.b.d("buildVersion");

        private static final dc.b f30630e = dc.b.d("jailbroken");

        private y() {
        }

        @Override
        public void a(CrashlyticsReport.e.AbstractC0412e abstractC0412e, dc.d dVar) {
            dVar.e(f30627b, abstractC0412e.c());
            dVar.a(f30628c, abstractC0412e.d());
            dVar.a(f30629d, abstractC0412e.b());
            dVar.c(f30630e, abstractC0412e.e());
        }
    }

    private static final class z implements dc.c {

        static final z f30631a = new z();

        private static final dc.b f30632b = dc.b.d("identifier");

        private z() {
        }

        @Override
        public void a(CrashlyticsReport.e.f fVar, dc.d dVar) {
            dVar.a(f30632b, fVar.b());
        }
    }

    private a() {
    }

    @Override
    public void a(ec.b bVar) {
        d dVar = d.f30504a;
        bVar.a(CrashlyticsReport.class, dVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.b.class, dVar);
        j jVar = j.f30543a;
        bVar.a(CrashlyticsReport.e.class, jVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.h.class, jVar);
        g gVar = g.f30523a;
        bVar.a(CrashlyticsReport.e.a.class, gVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.i.class, gVar);
        h hVar = h.f30531a;
        bVar.a(CrashlyticsReport.e.a.b.class, hVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.j.class, hVar);
        z zVar = z.f30631a;
        bVar.a(CrashlyticsReport.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.f30626a;
        bVar.a(CrashlyticsReport.e.AbstractC0412e.class, yVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.z.class, yVar);
        i iVar = i.f30533a;
        bVar.a(CrashlyticsReport.e.c.class, iVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.k.class, iVar);
        t tVar = t.f30607a;
        bVar.a(CrashlyticsReport.e.d.class, tVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.l.class, tVar);
        k kVar = k.f30556a;
        bVar.a(CrashlyticsReport.e.d.a.class, kVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.m.class, kVar);
        m mVar = m.f30569a;
        bVar.a(CrashlyticsReport.e.d.a.b.class, mVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.n.class, mVar);
        p pVar = p.f30585a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0405e.class, pVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.r.class, pVar);
        q qVar = q.f30589a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.class, qVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.s.class, qVar);
        n nVar = n.f30575a;
        bVar.a(CrashlyticsReport.e.d.a.b.c.class, nVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.p.class, nVar);
        b bVar2 = b.f30491a;
        bVar.a(CrashlyticsReport.a.class, bVar2);
        bVar.a(com.google.firebase.crashlytics.internal.model.c.class, bVar2);
        C0413a c0413a = C0413a.f30487a;
        bVar.a(CrashlyticsReport.a.AbstractC0395a.class, c0413a);
        bVar.a(com.google.firebase.crashlytics.internal.model.d.class, c0413a);
        o oVar = o.f30581a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0403d.class, oVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.q.class, oVar);
        l lVar = l.f30564a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0399a.class, lVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.o.class, lVar);
        c cVar = c.f30501a;
        bVar.a(CrashlyticsReport.c.class, cVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.e.class, cVar);
        r rVar = r.f30595a;
        bVar.a(CrashlyticsReport.e.d.a.c.class, rVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.t.class, rVar);
        s sVar = s.f30600a;
        bVar.a(CrashlyticsReport.e.d.c.class, sVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.u.class, sVar);
        u uVar = u.f30614a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0410d.class, uVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.v.class, uVar);
        x xVar = x.f30624a;
        bVar.a(CrashlyticsReport.e.d.f.class, xVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.y.class, xVar);
        v vVar = v.f30616a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0411e.class, vVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.w.class, vVar);
        w wVar = w.f30621a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0411e.b.class, wVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.x.class, wVar);
        e eVar = e.f30517a;
        bVar.a(CrashlyticsReport.d.class, eVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.f.class, eVar);
        f fVar = f.f30520a;
        bVar.a(CrashlyticsReport.d.b.class, fVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.g.class, fVar);
    }
}
