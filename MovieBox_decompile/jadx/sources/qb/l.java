package qb;

import tb.o;

public class l {

    private final kc.a f69619a;

    public l(kc.a aVar) {
        this.f69619a = aVar;
    }

    public static void b(e eVar, kc.b bVar) {
        ((cd.a) bVar.get()).a("firebase", eVar);
        g.f().b("Registering RemoteConfig Rollouts subscriber");
    }

    public void c(o oVar) {
        if (oVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
        } else {
            final e eVar = new e(oVar);
            this.f69619a.a(new kc.a.InterfaceC0789a() {
                @Override
                public final void a(kc.b bVar) {
                    l.b(eVar, bVar);
                }
            });
        }
    }
}
