package rc;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

public final class g implements iy.a {

    private final iy.a f70957a;

    private final iy.a f70958b;

    private final iy.a f70959c;

    private final iy.a f70960d;

    private final iy.a f70961e;

    private final iy.a f70962f;

    private final iy.a f70963g;

    public g(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5, iy.a aVar6, iy.a aVar7) {
        this.f70957a = aVar;
        this.f70958b = aVar2;
        this.f70959c = aVar3;
        this.f70960d = aVar4;
        this.f70961e = aVar5;
        this.f70962f = aVar6;
        this.f70963g = aVar7;
    }

    public static g a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5, iy.a aVar6, iy.a aVar7) {
        return new g(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static e c(com.google.firebase.f fVar, kc.b bVar, lc.e eVar, kc.b bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        return new e(fVar, bVar, eVar, bVar2, remoteConfigManager, aVar, sessionManager);
    }

    @Override
    public e get() {
        return c((com.google.firebase.f) this.f70957a.get(), (kc.b) this.f70958b.get(), (lc.e) this.f70959c.get(), (kc.b) this.f70960d.get(), (RemoteConfigManager) this.f70961e.get(), (com.google.firebase.perf.config.a) this.f70962f.get(), (SessionManager) this.f70963g.get());
    }
}
