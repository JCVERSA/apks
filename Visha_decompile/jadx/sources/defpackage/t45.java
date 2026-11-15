package defpackage;

import android.app.Activity;
import android.content.Context;
import com.transsion.mediationads.interstitial.InterstitialAdManagerCore;

public final class t45 implements gv4 {
    public static final t45 a = new t45();

    @Override
    public void a(Activity activity) {
        e().A(activity);
    }

    @Override
    public boolean b() {
        return e().v();
    }

    @Override
    public boolean c() {
        return e().z();
    }

    @Override
    public void d(Context context, boolean z) {
        y45.j(context, "context");
        e().B(context, z);
    }

    public final InterstitialAdManagerCore e() {
        return InterstitialAdManagerCore.o.a();
    }
}
