package defpackage;

import android.content.Context;

public final class laj {
    public final j3j a;

    public laj(Context context, pif pifVar) {
        this.a = new j3j(context, pifVar);
    }

    public final laj a(final t7j t7jVar) {
        j3j j3jVar = this.a;
        n7g.f(!j3jVar.r);
        t7jVar.getClass();
        j3jVar.f = new k3i() {
            @Override
            public final Object zza() {
                return t7jVar;
            }
        };
        return this;
    }

    public final laj b(final zqj zqjVar) {
        j3j j3jVar = this.a;
        n7g.f(!j3jVar.r);
        zqjVar.getClass();
        j3jVar.e = new k3i() {
            @Override
            public final Object zza() {
                return zqjVar;
            }
        };
        return this;
    }

    public final maj c() {
        j3j j3jVar = this.a;
        n7g.f(!j3jVar.r);
        j3jVar.r = true;
        return new maj(j3jVar);
    }
}
