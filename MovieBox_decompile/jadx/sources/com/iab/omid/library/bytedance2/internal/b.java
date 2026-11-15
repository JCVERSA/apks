package com.iab.omid.library.bytedance2.internal;

import android.annotation.SuppressLint;
import android.view.View;
import java.util.Iterator;

public class b extends d {

    @SuppressLint({"StaticFieldLeak"})
    private static b f32609d = new b();

    private b() {
    }

    public static b g() {
        return f32609d;
    }

    @Override
    public void b(boolean z10) {
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = c.c().b().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(z10);
        }
    }

    @Override
    public boolean d() {
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            View viewC = it.next().c();
            if (viewC != null && viewC.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
