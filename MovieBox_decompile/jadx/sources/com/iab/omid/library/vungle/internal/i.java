package com.iab.omid.library.vungle.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.vungle.walking.TreeWalker;
import java.util.Iterator;

public class i implements d.a, ve.c {

    private static i f32988f;

    private float f32989a = 0.0f;

    private final ve.e f32990b;

    private final ve.b f32991c;

    private ve.d f32992d;

    private c f32993e;

    public i(ve.e eVar, ve.b bVar) {
        this.f32990b = eVar;
        this.f32991c = bVar;
    }

    private c a() {
        if (this.f32993e == null) {
            this.f32993e = c.e();
        }
        return this.f32993e;
    }

    public static i d() {
        if (f32988f == null) {
            f32988f = new i(new ve.e(), new ve.b());
        }
        return f32988f;
    }

    public void b(Context context) {
        this.f32992d = this.f32990b.a(new Handler(), context, this.f32991c.a(), this);
    }

    public float c() {
        return this.f32989a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f32992d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f32992d.e();
    }

    @Override
    public void a(float f10) {
        this.f32989a = f10;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().b(f10);
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
