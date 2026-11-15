package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class rn7 extends OppO0O0 {
    public final io7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rn7(io7 io7Var, Context context, Class cls) {
        super(context, cls);
        this.k = io7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            io7 io7Var = this.k;
            io7Var.g = countryData;
            if (countryData != null) {
                ((al7) io7Var.a).l();
            }
        }
    }

    @Override
    public void g() {
    }
}
