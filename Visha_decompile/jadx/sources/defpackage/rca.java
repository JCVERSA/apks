package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.G;

public final class rca extends r17 {
    public rca(String str) {
        super(str);
    }

    public int r() {
        return 3;
    }

    public void s() {
        if (a()) {
            vnd vndVar = new vnd(new ied.b().i(r()).e(this.b).s(this.c).m(this.d).k(this.e).c(this.j).j(this.m).p(this.g).w(this.h).b(this.i).g());
            vndVar.g(new r17.a(this));
            vndVar.E();
        }
    }

    public void t() {
        G g = this.a;
        if (g instanceof vnd) {
            ied iedVarP = g.p();
            if (iedVarP != null && TextUtils.isEmpty(iedVarP.m())) {
                iedVarP.f(this.m);
            }
            try {
                this.l.add(this.a);
            } catch (Throwable unused) {
            }
            ((vnd) this.a).M();
        }
    }
}
