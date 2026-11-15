package defpackage;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.internal.ads.c6;
import com.google.android.gms.internal.ads.f6;
import java.util.Iterator;

public final class ivh implements dvh {
    public static ivh d;
    public float a = 0.0f;
    public c6 b;
    public cvh c;

    public ivh(zuh zuhVar, yuh yuhVar) {
    }

    public static ivh b() {
        if (d == null) {
            d = new ivh(new zuh(), new yuh());
        }
        return d;
    }

    public final float a() {
        return this.a;
    }

    public final void c(Context context) {
        this.b = new c6(new Handler(), context, new xuh(), this);
    }

    public final void d(float f) {
        this.a = f;
        if (this.c == null) {
            this.c = cvh.a();
        }
        Iterator it = this.c.b().iterator();
        while (it.hasNext()) {
            ((suh) it.next()).g().l(f);
        }
    }

    public final void e() {
        bvh.i().e(this);
        bvh.i().f();
        f6.d().i();
        this.b.c();
    }

    public final void f() {
        f6.d().j();
        bvh.i().g();
        this.b.d();
    }

    @Override
    public final void zzc(boolean z) {
        if (z) {
            f6.d().i();
        } else {
            f6.d().h();
        }
    }
}
