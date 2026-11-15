package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.measurement.internal.e;
import com.google.android.gms.measurement.internal.k;

public final class b7j extends nlh {
    public Handler c;
    public final z6j d;
    public final w6j e;
    public final k f;

    public b7j(e eVar) {
        super(eVar);
        this.d = new z6j(this);
        this.e = new w6j(this);
        this.f = new k(this);
    }

    public static void p(b7j b7jVar, long j) {
        b7jVar.g();
        b7jVar.r();
        b7jVar.a.b().u().b("Activity paused, time", Long.valueOf(j));
        b7jVar.f.a(j);
        if (b7jVar.a.z().w()) {
            b7jVar.e.b(j);
        }
    }

    public static void q(b7j b7jVar, long j) {
        b7jVar.g();
        b7jVar.r();
        b7jVar.a.b().u().b("Activity resumed, time", Long.valueOf(j));
        if (b7jVar.a.z().w() || b7jVar.a.F().q.b()) {
            b7jVar.e.c(j);
        }
        b7jVar.f.b();
        z6j z6jVar = b7jVar.d;
        z6jVar.a.g();
        if (z6jVar.a.a.o()) {
            z6jVar.b(z6jVar.a.a.c().currentTimeMillis(), false);
        }
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final void r() {
        g();
        if (this.c == null) {
            this.c = new vdf(Looper.getMainLooper());
        }
    }
}
