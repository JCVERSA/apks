package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class nk7 extends OppO0O0 {
    public final ll7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nk7(ll7 ll7Var, Context context, Class cls) {
        super(context, cls);
        this.k = ll7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            ll7 ll7Var = this.k;
            ll7Var.b = countryData;
            if (countryData == null) {
                ll7Var.d();
                return;
            }
            ((qm7) ll7Var.a).y(countryData.countries);
            long jAbs = Math.abs(System.currentTimeMillis() - this.k.b.baseTime);
            ll7 ll7Var2 = this.k;
            if (jAbs > ll7Var2.b.validity) {
                ll7Var2.d();
            }
        }
    }

    @Override
    public void g() {
    }
}
