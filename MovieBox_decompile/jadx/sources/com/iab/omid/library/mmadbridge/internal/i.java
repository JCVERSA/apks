package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mmadbridge.walking.TreeWalker;
import java.util.Iterator;

public class i implements d.a, pe.c {

    private static i f32877f;

    private float f32878a = 0.0f;

    private final pe.e f32879b;

    private final pe.b f32880c;

    private pe.d f32881d;

    private c f32882e;

    public i(pe.e eVar, pe.b bVar) {
        this.f32879b = eVar;
        this.f32880c = bVar;
    }

    private c a() {
        if (this.f32882e == null) {
            this.f32882e = c.e();
        }
        return this.f32882e;
    }

    public static i d() {
        if (f32877f == null) {
            f32877f = new i(new pe.e(), new pe.b());
        }
        return f32877f;
    }

    public void b(Context context) {
        this.f32881d = this.f32879b.a(new Handler(), context, this.f32880c.a(), this);
    }

    public float c() {
        return this.f32878a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f32881d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f32881d.e();
    }

    @Override
    public void a(float f10) {
        this.f32878a = f10;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().b(f10);
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
