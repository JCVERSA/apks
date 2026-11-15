package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class el7 extends OppO0O0 {
    public final vn7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public el7(vn7 vn7Var, Context context, Class cls) {
        super(context, cls);
        this.k = vn7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            vn7 vn7Var = this.k;
            vn7Var.f = countryData;
            if (countryData == null || countryData.countries == null) {
                return;
            }
            ((qo7) vn7Var.a).W();
        }
    }

    @Override
    public void g() {
    }
}
