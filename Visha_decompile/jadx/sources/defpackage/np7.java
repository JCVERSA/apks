package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class np7 extends OppO0O0 {
    public final do7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public np7(do7 do7Var, Context context, Class cls) {
        super(context, cls);
        this.k = do7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            do7 do7Var = this.k;
            do7Var.t = countryData;
            if (countryData != null) {
                ((kn7) do7Var.a).n0();
            }
        }
    }

    @Override
    public void g() {
    }
}
