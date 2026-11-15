package com.iab.omid.library.mmadbridge.adsession;

import android.view.View;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public class h extends b {

    private final d f32837a;

    private final c f32838b;

    private final com.iab.omid.library.mmadbridge.internal.f f32839c;

    private te.a f32840d;

    private AdSessionStatePublisher f32841e;

    private boolean f32842f;

    private boolean f32843g;

    private final String f32844h;

    private boolean f32845i;

    private boolean f32846j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    private void h() {
        if (this.f32845i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void i(View view) {
        Collection<h> collectionC = com.iab.omid.library.mmadbridge.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.n() == view) {
                hVar.f32840d.clear();
            }
        }
    }

    private void l() {
        if (this.f32846j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void m(View view) {
        this.f32840d = new te.a(view);
    }

    @Override
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f32843g) {
            return;
        }
        this.f32839c.c(view, friendlyObstructionPurpose, str);
    }

    @Override
    public void c() {
        if (this.f32843g) {
            return;
        }
        this.f32840d.clear();
        e();
        this.f32843g = true;
        t().u();
        com.iab.omid.library.mmadbridge.internal.c.e().d(this);
        t().o();
        this.f32841e = null;
    }

    @Override
    public void d(View view) {
        if (this.f32843g) {
            return;
        }
        re.g.d(view, "AdView is null");
        if (n() == view) {
            return;
        }
        m(view);
        t().a();
        i(view);
    }

    @Override
    public void e() {
        if (this.f32843g) {
            return;
        }
        this.f32839c.f();
    }

    @Override
    public void f(View view) {
        if (this.f32843g) {
            return;
        }
        this.f32839c.g(view);
    }

    @Override
    public void g() {
        if (this.f32842f) {
            return;
        }
        this.f32842f = true;
        com.iab.omid.library.mmadbridge.internal.c.e().f(this);
        this.f32841e.b(i.d().c());
        this.f32841e.l(com.iab.omid.library.mmadbridge.internal.a.a().c());
        this.f32841e.f(this, this.f32837a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(List list) {
        if (p()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((te.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    void k(JSONObject jSONObject) {
        l();
        t().m(jSONObject);
        this.f32846j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View n() {
        return (View) this.f32840d.get();
    }

    public List o() {
        return this.f32839c.a();
    }

    public boolean p() {
        return false;
    }

    public boolean q() {
        return this.f32842f && !this.f32843g;
    }

    public boolean r() {
        return this.f32843g;
    }

    public String s() {
        return this.f32844h;
    }

    public AdSessionStatePublisher t() {
        return this.f32841e;
    }

    public boolean u() {
        return this.f32838b.b();
    }

    public boolean v() {
        return this.f32838b.c();
    }

    public boolean w() {
        return this.f32842f;
    }

    void x() {
        h();
        t().v();
        this.f32845i = true;
    }

    void y() {
        l();
        t().x();
        this.f32846j = true;
    }

    h(c cVar, d dVar, String str) {
        this.f32839c = new com.iab.omid.library.mmadbridge.internal.f();
        this.f32842f = false;
        this.f32843g = false;
        this.f32838b = cVar;
        this.f32837a = dVar;
        this.f32844h = str;
        m(null);
        this.f32841e = (dVar.c() == AdSessionContextType.HTML || dVar.c() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.mmadbridge.publisher.a(str, dVar.j()) : new com.iab.omid.library.mmadbridge.publisher.b(str, dVar.f(), dVar.g());
        this.f32841e.y();
        com.iab.omid.library.mmadbridge.internal.c.e().b(this);
        this.f32841e.e(cVar);
    }
}
