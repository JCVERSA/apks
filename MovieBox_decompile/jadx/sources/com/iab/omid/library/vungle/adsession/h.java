package com.iab.omid.library.vungle.adsession;

import android.view.View;
import com.iab.omid.library.vungle.internal.i;
import com.iab.omid.library.vungle.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class h extends b {

    private final d f32957a;

    private final c f32958b;

    private final com.iab.omid.library.vungle.internal.f f32959c;

    private ze.a f32960d;

    private AdSessionStatePublisher f32961e;

    private boolean f32962f;

    private boolean f32963g;

    private final String f32964h;

    private boolean f32965i;

    private boolean f32966j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    private void e() {
        if (this.f32965i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void f(View view) {
        Collection<h> collectionC = com.iab.omid.library.vungle.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.l() == view) {
                hVar.f32960d.clear();
            }
        }
    }

    private void h() {
        if (this.f32966j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void i(View view) {
        this.f32960d = new ze.a(view);
    }

    @Override
    public void b() {
        if (this.f32963g) {
            return;
        }
        this.f32960d.clear();
        u();
        this.f32963g = true;
        k().q();
        com.iab.omid.library.vungle.internal.c.e().d(this);
        k().l();
        this.f32961e = null;
    }

    @Override
    public void c(View view) {
        if (this.f32963g || l() == view) {
            return;
        }
        i(view);
        k().a();
        f(view);
    }

    @Override
    public void d() {
        if (this.f32962f || this.f32961e == null) {
            return;
        }
        this.f32962f = true;
        com.iab.omid.library.vungle.internal.c.e().f(this);
        this.f32961e.b(i.d().c());
        this.f32961e.i(com.iab.omid.library.vungle.internal.a.a().c());
        this.f32961e.f(this, this.f32957a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void g(List list) {
        if (n()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((ze.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    public String j() {
        return this.f32964h;
    }

    public AdSessionStatePublisher k() {
        return this.f32961e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View l() {
        return (View) this.f32960d.get();
    }

    public List m() {
        return this.f32959c.a();
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return this.f32962f && !this.f32963g;
    }

    public boolean p() {
        return this.f32963g;
    }

    public boolean q() {
        return this.f32958b.b();
    }

    public boolean r() {
        return this.f32962f;
    }

    void s() {
        e();
        k().r();
        this.f32965i = true;
    }

    void t() {
        h();
        k().t();
        this.f32966j = true;
    }

    public void u() {
        if (this.f32963g) {
            return;
        }
        this.f32959c.b();
    }

    h(c cVar, d dVar, String str) {
        this.f32959c = new com.iab.omid.library.vungle.internal.f();
        this.f32962f = false;
        this.f32963g = false;
        this.f32958b = cVar;
        this.f32957a = dVar;
        this.f32964h = str;
        i(null);
        this.f32961e = (dVar.c() == AdSessionContextType.HTML || dVar.c() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.vungle.publisher.a(str, dVar.j()) : new com.iab.omid.library.vungle.publisher.b(str, dVar.f(), dVar.g());
        this.f32961e.u();
        com.iab.omid.library.vungle.internal.c.e().b(this);
        this.f32961e.e(cVar);
    }
}
