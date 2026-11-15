package defpackage;

public class fmd extends w2d {
    @Override
    public void a(Object obj) {
        khd khdVarB = b();
        prd prdVarX = khdVarB.x();
        bbd bbdVarZ = khdVarB.z();
        try {
            if (bbdVarZ.contains(obj)) {
                ixd ixdVarA = b().A();
                if (ixdVarA != null) {
                    ixdVarA.a();
                    return;
                }
                return;
            }
            khdVarB.g(new bbd(bbdVarZ));
            khdVarB.z().add(obj);
            l6d l6dVarA = l6d.a(c(obj));
            ixd ixdVarH = khdVarB.H();
            for (a8d a8dVar : l6dVarA != null ? l6dVarA.c() : null) {
                prdVarX.b(a8dVar.e());
                if (khdVarB.n(a8dVar) && a8dVar.n().booleanValue()) {
                    Object objA = a8dVar.a(obj);
                    if (!khdVarB.z().contains(objA)) {
                        mod modVarA = khdVarB.a(a8dVar, objA);
                        if (!(modVarA instanceof rfd) || !((rfd) modVarA).a().booleanValue()) {
                            if (ixdVarH.e()) {
                                khdVarB.E();
                            }
                            ixdVarH.d();
                            khdVarB.u(a8dVar.b());
                        }
                        ixdVarH.b(a8dVar.b());
                        modVarA.a(objA);
                    }
                }
                prdVarX.d();
            }
            khdVarB.D();
            khdVarB.g((bbd) khdVarB.z().a());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        }
    }

    public Class c(Object obj) {
        return obj.getClass();
    }
}
