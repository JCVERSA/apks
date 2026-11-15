package qb;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

public final class d implements qb.a {

    private static final h f69605c = new b();

    private final kc.a f69606a;

    private final AtomicReference f69607b = new AtomicReference(null);

    private static final class b implements h {
        private b() {
        }

        @Override
        public File a() {
            return null;
        }

        @Override
        public CrashlyticsReport.a b() {
            return null;
        }

        @Override
        public File c() {
            return null;
        }

        @Override
        public File d() {
            return null;
        }

        @Override
        public File e() {
            return null;
        }

        @Override
        public File f() {
            return null;
        }

        @Override
        public File g() {
            return null;
        }
    }

    public d(kc.a aVar) {
        this.f69606a = aVar;
        aVar.a(new kc.a.InterfaceC0789a() {
            @Override
            public final void a(kc.b bVar) {
                this.f69600a.g(bVar);
            }
        });
    }

    public void g(kc.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.f69607b.set((qb.a) bVar.get());
    }

    public static void h(String str, String str2, long j10, ub.e eVar, kc.b bVar) {
        ((qb.a) bVar.get()).c(str, str2, j10, eVar);
    }

    @Override
    public h a(String str) {
        qb.a aVar = (qb.a) this.f69607b.get();
        return aVar == null ? f69605c : aVar.a(str);
    }

    @Override
    public boolean b() {
        qb.a aVar = (qb.a) this.f69607b.get();
        return aVar != null && aVar.b();
    }

    @Override
    public void c(final String str, final String str2, final long j10, final ub.e eVar) {
        g.f().i("Deferring native open session: " + str);
        this.f69606a.a(new kc.a.InterfaceC0789a() {
            @Override
            public final void a(kc.b bVar) {
                d.h(str, str2, j10, eVar, bVar);
            }
        });
    }

    @Override
    public boolean d(String str) {
        qb.a aVar = (qb.a) this.f69607b.get();
        return aVar != null && aVar.d(str);
    }
}
