package defpackage;

import OppOOO0.OppOOp0;
import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.model.data.CountryData;

public class xr7 extends OppO0O0 {
    public final OppOOp0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xr7(OppOOp0 oppOOp0, Context context, Class cls) {
        super(context, cls);
        this.k = oppOOp0;
    }

    @Override
    public void b(int i, Object obj, String str) {
        CountryData countryData = (CountryData) obj;
        if (this.k.a()) {
            OppOOp0 oppOOp0 = this.k;
            oppOOp0.k = countryData;
            ((jq7) oppOOp0.a).p0();
        }
    }

    @Override
    public void g() {
    }
}
