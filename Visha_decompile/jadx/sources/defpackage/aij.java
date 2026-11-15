package defpackage;

import android.content.Context;

public final class aij {
    public final Context a;
    public boolean c;
    public cij f;
    public vhj g;
    public final ggj b = ggj.c;
    public final yhj d = yhj.a;
    public final zhj e = zhj.a;

    public aij(Context context) {
        this.a = context;
    }

    public final xij c() {
        n7g.f(!this.c);
        this.c = true;
        if (this.f == null) {
            this.f = new cij(new vqf[0]);
        }
        if (this.g == null) {
            this.g = new vhj(this.a);
        }
        return new xij(this, null);
    }
}
