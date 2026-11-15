package defpackage;

import com.cloud.hisavana.sdk.G;

public class vca extends r17 {
    public final String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vca(String str) {
        super(str);
        y45.j(str, "placementId");
        this.n = str;
    }

    public int r() {
        return 5;
    }

    public void s() {
        if (a()) {
            ied iedVarG = new ied.b().i(r()).e(this.b).s(this.c).m(this.d).k(this.e).c(this.j).j(this.m).p(this.g).w(this.h).b(this.i).g();
            y45.g(iedVarG);
            rpd rpdVar = new rpd(iedVarG);
            rpdVar.g(new r17.a(this));
            rpdVar.E();
        }
    }

    public final void t(n6 n6Var) {
        o(n6Var);
    }

    public final void u() {
        String strM;
        G g = this.a;
        if (g instanceof rpd) {
            ied iedVarP = g.p();
            if (iedVarP != null && ((strM = iedVarP.m()) == null || strM.length() == 0)) {
                iedVarP.f(this.m);
            }
            try {
                this.l.add(this.a);
            } catch (Throwable unused) {
            }
            G g2 = this.a;
            y45.h(g2, "null cannot be cast to non-null type com.cloud.hisavana.sdk.internal.rewarded.TranRewarded");
            ((rpd) g2).L();
        }
    }
}
