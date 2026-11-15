package com.iab.omid.library.hisavana.internal;

import android.view.View;
import java.util.Iterator;

public class b extends d {

    private static b f32739d = new b();

    private b() {
    }

    public static b k() {
        return f32739d;
    }

    @Override
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().k(z10);
        }
    }

    @Override
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewM = ((com.iab.omid.library.hisavana.adsession.h) it.next()).m();
            if (viewM != null && viewM.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
