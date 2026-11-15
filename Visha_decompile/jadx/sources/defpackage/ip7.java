package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class ip7 extends OppO0O0 {
    public final up7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ip7(up7 up7Var, Context context, Class cls) {
        super(context, cls);
        this.k = up7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            up7 up7Var = this.k;
            up7Var.h = countryData;
            if (countryData != null) {
                ((wm7) up7Var.a).l();
            }
        }
    }

    @Override
    public void g() {
    }
}
