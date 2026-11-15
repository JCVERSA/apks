package com.transsion.postdetail.shorttv.factory;

import android.app.Activity;
import android.view.MotionEvent;
import com.therouter.TheRouter;
import com.transsion.baseui.music.MusicFloatManager;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public final class j implements ur.j {
    @Override
    public void a(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.g(refer);
        }
    }

    @Override
    public void b() {
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.b();
        }
    }

    @Override
    public void c(Activity activity, MotionEvent event) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(event, "event");
        MusicFloatManager.f42282h.b().i(activity, event);
    }

    @Override
    public void d() {
        MusicFloatManager.f42282h.b().B(null);
        com.transsion.player.mediasession.h.f46423a.p();
    }

    @Override
    public void e(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.i(refer);
        }
    }
}
