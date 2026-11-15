package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Date;
import java.util.Iterator;

public class a implements d.a {

    private static a f32603f = new a(new d());

    protected com.iab.omid.library.bytedance2.utils.f f32604a = new com.iab.omid.library.bytedance2.utils.f();

    private Date f32605b;

    private boolean f32606c;

    private d f32607d;

    private boolean f32608e;

    private a(d dVar) {
        this.f32607d = dVar;
    }

    public static a a() {
        return f32603f;
    }

    private void c() {
        if (!this.f32606c || this.f32605b == null) {
            return;
        }
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(b());
        }
    }

    public Date b() {
        Date date = this.f32605b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date dateA = this.f32604a.a();
        Date date = this.f32605b;
        if (date == null || dateA.after(date)) {
            this.f32605b = dateA;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f32606c) {
            return;
        }
        this.f32607d.a(context);
        this.f32607d.a(this);
        this.f32607d.e();
        this.f32608e = this.f32607d.c();
        this.f32606c = true;
    }

    @Override
    public void a(boolean z10) {
        if (!this.f32608e && z10) {
            d();
        }
        this.f32608e = z10;
    }
}
