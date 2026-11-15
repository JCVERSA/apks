package com.iab.omid.library.hisavana.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

public class a implements d.a {

    private static a f32733f = new a(new d());

    protected le.f f32734a = new le.f();

    private Date f32735b;

    private boolean f32736c;

    private d f32737d;

    private boolean f32738e;

    private a(d dVar) {
        this.f32737d = dVar;
    }

    public static a a() {
        return f32733f;
    }

    private void d() {
        if (!this.f32736c || this.f32735b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().i(c());
        }
    }

    public void b(Context context) {
        if (this.f32736c) {
            return;
        }
        this.f32737d.a(context);
        this.f32737d.b(this);
        this.f32737d.i();
        this.f32738e = this.f32737d.g();
        this.f32736c = true;
    }

    public Date c() {
        Date date = this.f32735b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f32734a.a();
        Date date = this.f32735b;
        if (date == null || dateA.after(date)) {
            this.f32735b = dateA;
            d();
        }
    }

    @Override
    public void a(boolean z10) {
        if (!this.f32738e && z10) {
            e();
        }
        this.f32738e = z10;
    }
}
