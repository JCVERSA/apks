package defpackage;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.AdSessionContextType;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher;
import com.iab.omid.library.hisavana.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class e3d extends s7 {
    public final u7 a;
    public final t7 b;
    public final ped c;
    public v1d d;
    public AdSessionStatePublisher e;
    public boolean f;
    public boolean g;
    public final String h;
    public boolean i;
    public boolean j;

    public e3d(t7 t7Var, u7 u7Var) {
        this(t7Var, u7Var, UUID.randomUUID().toString());
    }

    @Override
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.g) {
            return;
        }
        this.c.c(view, friendlyObstructionPurpose, str);
    }

    @Override
    public void c() {
        if (this.g) {
            return;
        }
        this.d.clear();
        v();
        this.g = true;
        l().q();
        i8d.e().d(this);
        l().l();
        this.e = null;
    }

    @Override
    public void d(View view) {
        if (this.g || m() == view) {
            return;
        }
        j(view);
        l().a();
        g(view);
    }

    @Override
    public void e() {
        if (this.f || this.e == null) {
            return;
        }
        this.f = true;
        i8d.e().f(this);
        this.e.b(wid.d().c());
        this.e.i(i3d.a().c());
        this.e.e(this, this.a);
    }

    public final void f() {
        if (this.i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    public final void g(View view) {
        Collection<e3d> collectionC = i8d.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (e3d e3dVar : collectionC) {
            if (e3dVar != this && e3dVar.m() == view) {
                e3dVar.d.clear();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void h(List list) {
        if (o()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((v1d) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    public final void i() {
        if (this.j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public final void j(View view) {
        this.d = new v1d(view);
    }

    public String k() {
        return this.h;
    }

    public AdSessionStatePublisher l() {
        return this.e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View m() {
        return (View) this.d.get();
    }

    public List n() {
        return this.c.a();
    }

    public boolean o() {
        return false;
    }

    public boolean p() {
        return this.f && !this.g;
    }

    public boolean q() {
        return this.g;
    }

    public boolean r() {
        return this.b.b();
    }

    public boolean s() {
        return this.f;
    }

    public void t() {
        f();
        l().r();
        this.i = true;
    }

    public void u() {
        i();
        l().t();
        this.j = true;
    }

    public void v() {
        if (this.g) {
            return;
        }
        this.c.f();
    }

    public e3d(t7 t7Var, u7 u7Var, String str) {
        this.c = new ped();
        this.f = false;
        this.g = false;
        this.b = t7Var;
        this.a = u7Var;
        this.h = str;
        j(null);
        this.e = (u7Var.b() == AdSessionContextType.HTML || u7Var.b() == AdSessionContextType.JAVASCRIPT) ? new k3d(str, u7Var.i()) : new b(str, u7Var.e(), u7Var.f());
        this.e.u();
        i8d.e().b(this);
        this.e.d(t7Var);
    }
}
