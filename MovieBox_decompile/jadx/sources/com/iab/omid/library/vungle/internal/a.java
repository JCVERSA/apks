package com.iab.omid.library.vungle.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

public class a implements d.a {

    private static a f32967f = new a(new d());

    protected xe.f f32968a = new xe.f();

    private Date f32969b;

    private boolean f32970c;

    private d f32971d;

    private boolean f32972e;

    private a(d dVar) {
        this.f32971d = dVar;
    }

    public static a a() {
        return f32967f;
    }

    private void d() {
        if (!this.f32970c || this.f32969b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().i(c());
        }
    }

    public void b(Context context) {
        if (this.f32970c) {
            return;
        }
        this.f32971d.a(context);
        this.f32971d.b(this);
        this.f32971d.i();
        this.f32972e = this.f32971d.g();
        this.f32970c = true;
    }

    public Date c() {
        Date date = this.f32969b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f32968a.a();
        Date date = this.f32969b;
        if (date == null || dateA.after(date)) {
            this.f32969b = dateA;
            d();
        }
    }

    @Override
    public void a(boolean z10) {
        if (!this.f32972e && z10) {
            e();
        }
        this.f32972e = z10;
    }
}
