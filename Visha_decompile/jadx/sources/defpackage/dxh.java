package defpackage;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.g6;
import com.google.android.gms.internal.ads.h6;

public final class dxh {
    public final Context a;
    public final Looper b;

    public dxh(Context context, Looper looper) {
        this.a = context;
        this.b = looper;
    }

    public final void a(String str) {
        nxh nxhVarB0 = h6.b0();
        Context context = this.a;
        nxhVarB0.v(context.getPackageName());
        nxhVarB0.x(2);
        lxh lxhVarB0 = g6.b0();
        lxhVarB0.v(str);
        lxhVarB0.w(2);
        nxhVarB0.w(lxhVarB0);
        new exh(context, this.b, (h6) nxhVarB0.q()).a();
    }
}
