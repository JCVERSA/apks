package defpackage;

import com.google.firebase.installations.local.b;

public class pe4 implements jx9 {
    public final vlb a;
    public final zda b;

    public pe4(vlb vlbVar, zda zdaVar) {
        this.a = vlbVar;
        this.b = zdaVar;
    }

    @Override
    public boolean a(Exception exc) {
        this.b.d(exc);
        return true;
    }

    @Override
    public boolean b(b bVar) {
        if (!bVar.k() || this.a.f(bVar)) {
            return false;
        }
        this.b.c(h15.a().b(bVar.b()).d(bVar.c()).c(bVar.h()).a());
        return true;
    }
}
