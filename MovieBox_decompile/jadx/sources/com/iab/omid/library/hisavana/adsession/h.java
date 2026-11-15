package com.iab.omid.library.hisavana.adsession;

import android.view.View;
import com.iab.omid.library.hisavana.internal.i;
import com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class h extends b {

    private final d f32723a;

    private final c f32724b;

    private final com.iab.omid.library.hisavana.internal.f f32725c;

    private ne.a f32726d;

    private AdSessionStatePublisher f32727e;

    private boolean f32728f;

    private boolean f32729g;

    private final String f32730h;

    private boolean f32731i;

    private boolean f32732j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    private void f() {
        if (this.f32731i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void g(View view) {
        Collection<h> collectionC = com.iab.omid.library.hisavana.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.m() == view) {
                hVar.f32726d.clear();
            }
        }
    }

    private void i() {
        if (this.f32732j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void j(View view) {
        this.f32726d = new ne.a(view);
    }

    @Override
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f32729g) {
            return;
        }
        this.f32725c.c(view, friendlyObstructionPurpose, str);
    }

    @Override
    public void c() {
        if (this.f32729g) {
            return;
        }
        this.f32726d.clear();
        v();
        this.f32729g = true;
        l().q();
        com.iab.omid.library.hisavana.internal.c.e().d(this);
        l().l();
        this.f32727e = null;
    }

    @Override
    public void d(View view) {
        if (this.f32729g || m() == view) {
            return;
        }
        j(view);
        l().a();
        g(view);
    }

    @Override
    public void e() {
        if (this.f32728f || this.f32727e == null) {
            return;
        }
        this.f32728f = true;
        com.iab.omid.library.hisavana.internal.c.e().f(this);
        this.f32727e.b(i.d().c());
        this.f32727e.i(com.iab.omid.library.hisavana.internal.a.a().c());
        this.f32727e.f(this, this.f32723a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void h(List list) {
        if (o()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((ne.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    public String k() {
        return this.f32730h;
    }

    public AdSessionStatePublisher l() {
        return this.f32727e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View m() {
        return (View) this.f32726d.get();
    }

    public List n() {
        return this.f32725c.a();
    }

    public boolean o() {
        return false;
    }

    public boolean p() {
        return this.f32728f && !this.f32729g;
    }

    public boolean q() {
        return this.f32729g;
    }

    public boolean r() {
        return this.f32724b.b();
    }

    public boolean s() {
        return this.f32728f;
    }

    void t() {
        f();
        l().r();
        this.f32731i = true;
    }

    void u() {
        i();
        l().t();
        this.f32732j = true;
    }

    public void v() {
        if (this.f32729g) {
            return;
        }
        this.f32725c.f();
    }

    h(c cVar, d dVar, String str) {
        this.f32725c = new com.iab.omid.library.hisavana.internal.f();
        this.f32728f = false;
        this.f32729g = false;
        this.f32724b = cVar;
        this.f32723a = dVar;
        this.f32730h = str;
        j(null);
        this.f32727e = (dVar.b() == AdSessionContextType.HTML || dVar.b() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.hisavana.publisher.a(str, dVar.i()) : new com.iab.omid.library.hisavana.publisher.b(str, dVar.e(), dVar.f());
        this.f32727e.u();
        com.iab.omid.library.hisavana.internal.c.e().b(this);
        this.f32727e.e(cVar);
    }
}
