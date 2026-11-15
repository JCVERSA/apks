package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class n6e {
    public final Context a;
    public final e7e b;
    public zdf c;
    public mgf d;
    public final List e = zzfww.zzn();
    public final vbf f = vbf.a;
    public tbg g = tbg.a;
    public boolean h;

    public n6e(Context context, e7e e7eVar) {
        this.a = context.getApplicationContext();
        this.b = e7eVar;
    }

    public final n6e e(tbg tbgVar) {
        this.g = tbgVar;
        return this;
    }

    public final t6e f() {
        n7g.f(!this.h);
        if (this.d == null) {
            if (this.c == null) {
                this.c = new q6e(false);
            }
            this.d = new r6e(this.c);
        }
        t6e t6eVar = new t6e(this, null);
        this.h = true;
        return t6eVar;
    }
}
