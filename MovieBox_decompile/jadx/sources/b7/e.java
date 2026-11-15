package b7;

import android.content.Context;
import android.view.View;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.e1;
import com.cloud.hisavana.sdk.p3;

public class e extends b7.a {

    private View f15608m;

    private g f15609n;

    private Context f15610o;

    private String f15611p;

    private boolean f15612q;

    private boolean f15613r;

    private boolean f15614s;

    private Float f15615t;

    private static class a extends b7.a.C0135a {
        a(e eVar) {
            super(eVar);
        }

        @Override
        public g f() {
            b7.a aVar = this.f15603a;
            if (aVar instanceof e) {
                return ((e) aVar).f15609n;
            }
            return null;
        }
    }

    public e(Context context, String str) {
        super(str);
        this.f15612q = false;
        this.f15613r = false;
        this.f15614s = false;
        this.f15610o = context;
    }

    @Override
    public void c() {
        super.c();
        this.f15608m = null;
    }

    public void t() {
        if (this.f15612q) {
            c7.b.o(this.f15610o, this.f15611p, this.f15613r);
        }
        if (b()) {
            e1 e1Var = new e1(new p3.b().i(4).e(this.f15592b).r(this.f15593c).l(this.f15594d).j(this.f15595e).d(this.f15600j).o(this.f15597g).v(this.f15598h).c(this.f15599i).g());
            e1Var.g(new a(this));
            e1Var.E();
        }
    }

    public e u(String str, boolean z10) {
        this.f15612q = true;
        this.f15611p = str;
        this.f15613r = z10;
        return this;
    }

    public void v(View view) {
        this.f15608m = view;
    }

    public void w(Float f10) {
        this.f15615t = f10;
    }

    public void x(g gVar) {
        this.f15609n = gVar;
    }

    public void y() {
        F f10 = this.f15591a;
        if (f10 == null || !(f10 instanceof e1)) {
            return;
        }
        try {
            ((e1) f10).n0(this.f15614s);
            ((e1) this.f15591a).e0(this.f15615t);
            ((e1) this.f15591a).i0(this.f15608m);
            this.f15602l.add(this.f15591a);
        } catch (Throwable th2) {
            b4.b().w("ssp", "TSplash show error: " + th2.getMessage());
        }
        ((e1) this.f15591a).m0(this.f15610o);
    }
}
