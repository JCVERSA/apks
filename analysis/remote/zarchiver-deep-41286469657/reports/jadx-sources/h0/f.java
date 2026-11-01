package h0;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;
import ru.zdevs.zarchiver.io.SAF;

public abstract class f {

    public final h f1097a;

    public f(h hVar) {
        this.f1097a = hVar;
    }

    public static boolean e(h hVar) {
        if (hVar.j()) {
            return n0.e.i(hVar.f1108c);
        }
        if (!hVar.m()) {
            return hVar.g() && f0.a.m().n(hVar.f1108c) && f0.a.m().e(hVar.f1110e, null) != null;
        }
        Uri uriL = SAF.l(0, hVar.f1108c);
        if (uriL == null) {
            return false;
        }
        return SAF.p(uriL);
    }

    public static f u(h hVar) {
        if (hVar.j()) {
            return new j0.d(hVar);
        }
        if (hVar.m()) {
            return new m0.b(hVar);
        }
        if (hVar.k()) {
            return new k0.b(hVar);
        }
        return hVar.i() ? new m0.c(hVar) : new a();
    }

    public boolean a(h hVar) {
        throw new UnsupportedOperationException();
    }

    public abstract h b(String str);

    public abstract boolean c();

    public abstract boolean d();

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        try {
            return this.f1097a.equals(((f) obj).f1097a);
        } catch (Exception unused) {
            return false;
        }
    }

    public abstract boolean f(String str);

    public String g() {
        return this.f1097a.f1108c;
    }

    public String h() {
        return null;
    }

    public final String i() {
        return this.f1097a.e();
    }

    public final h j() {
        return new h(a0.c.A(this.f1097a.f1108c));
    }

    public abstract boolean k();

    public abstract boolean l();

    public abstract boolean m();

    public abstract long n();

    public abstract long o();

    public abstract f[] p();

    public abstract boolean q(String str);

    public void r(String str) throws Exception {
        if (q(str)) {
            return;
        }
        String strH = h();
        if (strH == null) {
            strH = "Failed to create";
        }
        throw new Exception(a0.c.i(this.f1097a.f1108c, str) + ": " + strH);
    }

    public abstract boolean s(String str);

    public abstract boolean t(h hVar);

    public abstract ParcelFileDescriptor v(int i2);

    public abstract InputStream w();

    public abstract OutputStream x(long j2);

    public abstract boolean y(String str);

    public abstract boolean z(long j2, OutputStream outputStream);
}
