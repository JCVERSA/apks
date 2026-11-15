package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import java.util.Iterator;

public class b extends d {

    private static b f32858d = new b();

    private b() {
    }

    public static b k() {
        return f32858d;
    }

    @Override
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().n(z10);
        }
    }

    @Override
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewN = ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).n();
            if (viewN != null && viewN.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
