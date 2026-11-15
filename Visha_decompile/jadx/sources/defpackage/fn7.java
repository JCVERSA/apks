package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class fn7 extends OppO0O0 {
    public final jn7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fn7(jn7 jn7Var, Context context, Class cls) {
        super(context, cls);
        this.k = jn7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            jn7 jn7Var = this.k;
            jn7Var.j = countryData;
            if (countryData != null) {
                ((lp7) jn7Var.a).l();
            }
        }
    }

    @Override
    public void g() {
    }
}
