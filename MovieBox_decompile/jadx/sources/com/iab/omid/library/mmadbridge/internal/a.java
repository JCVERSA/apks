package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

public class a implements d.a {

    private static a f32852f = new a(new d());

    protected re.f f32853a = new re.f();

    private Date f32854b;

    private boolean f32855c;

    private d f32856d;

    private boolean f32857e;

    private a(d dVar) {
        this.f32856d = dVar;
    }

    public static a a() {
        return f32852f;
    }

    private void d() {
        if (!this.f32855c || this.f32854b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().l(c());
        }
    }

    public void b(Context context) {
        if (this.f32855c) {
            return;
        }
        this.f32856d.a(context);
        this.f32856d.b(this);
        this.f32856d.i();
        this.f32857e = this.f32856d.g();
        this.f32855c = true;
    }

    public Date c() {
        Date date = this.f32854b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f32853a.a();
        Date date = this.f32854b;
        if (date == null || dateA.after(date)) {
            this.f32854b = dateA;
            d();
        }
    }

    @Override
    public void a(boolean z10) {
        if (!this.f32857e && z10) {
            e();
        }
        this.f32857e = z10;
    }
}
