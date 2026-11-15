package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.CountryListReq;
import java.util.ArrayList;

public class ll7 extends BasePresenter {
    public CountryData b;
    public uk7 c = new on7();

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            ArrayList<CountryData.Country> arrayList;
            CountryData countryData = (CountryData) obj;
            if (ll7.this.a() && countryData != null && (arrayList = countryData.countries) != null && arrayList.size() > 0) {
                ll7.this.b = countryData;
                countryData.baseTime = System.currentTimeMillis();
                ll7 ll7Var = ll7.this;
                ((on7) ll7Var.c).b(ll7Var.b(), ll7.this.b);
                ll7 ll7Var2 = ll7.this;
                ((qm7) ll7Var2.a).y(ll7Var2.b.countries);
            }
        }

        @Override
        public void g() {
        }
    }

    public final CountrySelectActivity b() {
        return (CountrySelectActivity) ((qm7) this.a).J();
    }

    public ArrayList c() {
        CountryData countryData = this.b;
        if (countryData == null) {
            return null;
        }
        return countryData.countries;
    }

    public void d() {
        uk7 uk7Var = this.c;
        CountrySelectActivity countrySelectActivityB = b();
        a aVar = new a(b(), CountryData.class);
        ((on7) uk7Var).getClass();
        CountryListReq countryListReq = new CountryListReq();
        countryListReq.appId = go7.a.a.a;
        countryListReq.language = countrySelectActivityB.getResources().getString(R.string.xn_language);
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(countrySelectActivityB)) {
            new zn7().c(countrySelectActivityB, dp7.a("/app/country/list"), countryListReq, aVar);
        } else {
            countrySelectActivityB.A0();
            cr7Var.b(countrySelectActivityB);
        }
    }
}
