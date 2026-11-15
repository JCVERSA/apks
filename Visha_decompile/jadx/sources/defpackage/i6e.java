package defpackage;

import android.content.Context;
import android.os.Handler;

public final class i6e {
    public final Context a;
    public boolean b;
    public hlj c = hlj.a;
    public final pkj d;
    public Handler e;
    public l7e f;

    public i6e(Context context) {
        this.a = context;
        this.d = new jkj(context, null, null);
    }

    public final i6e e(Handler handler) {
        this.e = handler;
        return this;
    }

    public final i6e f(l7e l7eVar) {
        this.f = l7eVar;
        return this;
    }

    public final i6e g(hlj hljVar) {
        this.c = hljVar;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    public final k6e h() {
        boolean z;
        n7g.f(!this.b);
        Handler handler = this.e;
        if (handler == null && this.f == null) {
            z = true;
        } else {
            z = false;
            if (handler != null && this.f != null) {
                z = true;
            }
        }
        n7g.f(z);
        this.b = true;
        return new k6e(this);
    }
}
