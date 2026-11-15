package tc;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;

public class a {

    private final com.google.firebase.f f72679a;

    private final lc.e f72680b;

    private final kc.b f72681c;

    private final kc.b f72682d;

    public a(com.google.firebase.f fVar, lc.e eVar, kc.b bVar, kc.b bVar2) {
        this.f72679a = fVar;
        this.f72680b = eVar;
        this.f72681c = bVar;
        this.f72682d = bVar2;
    }

    com.google.firebase.perf.config.a a() {
        return com.google.firebase.perf.config.a.g();
    }

    com.google.firebase.f b() {
        return this.f72679a;
    }

    lc.e c() {
        return this.f72680b;
    }

    kc.b d() {
        return this.f72681c;
    }

    RemoteConfigManager e() {
        return RemoteConfigManager.getInstance();
    }

    SessionManager f() {
        return SessionManager.getInstance();
    }

    kc.b g() {
        return this.f72682d;
    }
}
