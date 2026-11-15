package com.iab.omid.library.vungle.internal;

import android.view.View;
import java.util.Iterator;

public class b extends d {

    private static b f32973d = new b();

    private b() {
    }

    public static b k() {
        return f32973d;
    }

    @Override
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().k(z10);
        }
    }

    @Override
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewL = ((com.iab.omid.library.vungle.adsession.h) it.next()).l();
            if (viewL != null && viewL.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
