package com.iab.omid.library.hisavana.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.hisavana.walking.TreeWalker;
import java.util.Iterator;

public class i implements d.a, je.c {

    private static i f32758f;

    private float f32759a = 0.0f;

    private final je.e f32760b;

    private final je.b f32761c;

    private je.d f32762d;

    private c f32763e;

    public i(je.e eVar, je.b bVar) {
        this.f32760b = eVar;
        this.f32761c = bVar;
    }

    private c a() {
        if (this.f32763e == null) {
            this.f32763e = c.e();
        }
        return this.f32763e;
    }

    public static i d() {
        if (f32758f == null) {
            f32758f = new i(new je.e(), new je.b());
        }
        return f32758f;
    }

    public void b(Context context) {
        this.f32762d = this.f32760b.a(new Handler(), context, this.f32761c.a(), this);
    }

    public float c() {
        return this.f32759a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f32762d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f32762d.e();
    }

    @Override
    public void a(float f10) {
        this.f32759a = f10;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().b(f10);
        }
    }

    @Override
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.p().q();
        } else {
            TreeWalker.p().o();
        }
    }
}
