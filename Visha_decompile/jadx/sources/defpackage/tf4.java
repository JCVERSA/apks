package defpackage;

import com.google.firebase.installations.local.b;

public class tf4 implements jx9 {
    public final zda a;

    public tf4(zda zdaVar) {
        this.a = zdaVar;
    }

    @Override
    public boolean a(Exception exc) {
        return false;
    }

    @Override
    public boolean b(b bVar) {
        if (!bVar.l() && !bVar.k() && !bVar.i()) {
            return false;
        }
        this.a.e(bVar.d());
        return true;
    }
}
