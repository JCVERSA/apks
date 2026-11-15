package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.bytedance2.walking.TreeWalker;
import java.util.Iterator;

public class i implements com.iab.omid.library.bytedance2.devicevolume.c, d.a {

    private static i f32628f;

    private float f32629a = 0.0f;

    private final com.iab.omid.library.bytedance2.devicevolume.e f32630b;

    private final com.iab.omid.library.bytedance2.devicevolume.b f32631c;

    private com.iab.omid.library.bytedance2.devicevolume.d f32632d;

    private c f32633e;

    public i(com.iab.omid.library.bytedance2.devicevolume.e eVar, com.iab.omid.library.bytedance2.devicevolume.b bVar) {
        this.f32630b = eVar;
        this.f32631c = bVar;
    }

    private c a() {
        if (this.f32633e == null) {
            this.f32633e = c.c();
        }
        return this.f32633e;
    }

    public static i c() {
        if (f32628f == null) {
            f32628f = new i(new com.iab.omid.library.bytedance2.devicevolume.e(), new com.iab.omid.library.bytedance2.devicevolume.b());
        }
        return f32628f;
    }

    public float b() {
        return this.f32629a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f32632d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f32632d.d();
    }

    @Override
    public void a(float f10) {
        this.f32629a = f10;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = a().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f10);
        }
    }

    public void a(Context context) {
        this.f32632d = this.f32630b.a(new Handler(), context, this.f32631c.a(), this);
    }

    @Override
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
