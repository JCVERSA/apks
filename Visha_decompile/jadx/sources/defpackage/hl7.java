package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class hl7 extends OppO0O0 {
    public final pl7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hl7(pl7 pl7Var, Context context, Class cls) {
        super(context, cls);
        this.k = pl7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            pl7 pl7Var = this.k;
            pl7Var.i = countryData;
            if (countryData != null) {
                ((gn7) pl7Var.a).l();
            }
        }
    }

    @Override
    public void g() {
    }
}
