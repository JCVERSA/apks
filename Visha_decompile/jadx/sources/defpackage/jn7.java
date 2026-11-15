package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.EditAddressActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AddAddressReq;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import com.transsion.xuanniao.account.model.data.BaseEncryptRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import java.util.ArrayList;
import org.slf4j.Marker;

public class jn7 extends BasePresenter {
    public zl7 b = new zl7();
    public AddressesListRes.Address c;
    public String d;
    public String e;
    public String f;
    public String g;
    public int h;
    public String i;
    public CountryData j;

    public class a extends OppO0O0 {
        public a(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            if (jn7.this.a()) {
                xj.U(jn7.this.c()).s0(1, null);
                jn7.this.c().A0();
                ((lp7) jn7.this.a).onSuccess();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            if (jn7.this.a()) {
                xj.U(jn7.this.c()).s0(0, String.valueOf(baseData.code));
                super.d(baseData, str);
            }
        }

        @Override
        public void g() {
            if (jn7.this.a()) {
                jn7.this.d();
            }
        }
    }

    public final AddAddressReq b(String str) {
        AddAddressReq addAddressReq = new AddAddressReq();
        addAddressReq.id = str;
        addAddressReq.userName = ((lp7) this.a).x();
        addAddressReq.label = h();
        addAddressReq.address = ((lp7) this.a).i0();
        addAddressReq.phone = ((lp7) this.a).k();
        addAddressReq.country = this.f;
        addAddressReq.countryCode = this.g;
        addAddressReq.province = ((lp7) this.a).m0();
        addAddressReq.district = ((lp7) this.a).R();
        addAddressReq.postalCode = ((lp7) this.a).M();
        addAddressReq.defaultFlag = ((lp7) this.a).O();
        return addAddressReq;
    }

    public final EditAddressActivity c() {
        return (EditAddressActivity) ((lp7) this.a).J();
    }

    public void d() {
        c().u0(c().getString(R.string.xn_loading));
        try {
            this.b.b(c(), b(null), new a(c(), BaseEncryptRes.class));
        } catch (Exception e) {
            e.printStackTrace();
            c().A0();
            c().y0(c().getString(R.string.xn_net_unavailable));
        }
    }

    public ArrayList e() {
        CountryData countryData = this.j;
        if (countryData != null) {
            return countryData.countries;
        }
        return null;
    }

    public String f() {
        if (TextUtils.isEmpty(this.d)) {
            this.d = CountryData.getCountryCode(((lp7) this.a).J(), e());
        }
        if (TextUtils.isEmpty(this.d)) {
            return this.d;
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(this.d);
        return sbA.toString();
    }

    public String g() {
        if (TextUtils.isEmpty(this.d)) {
            this.d = CountryData.getCountryCode(((lp7) this.a).J(), e());
        }
        return this.d;
    }

    public String h() {
        return TextUtils.isEmpty(this.i) ? "" : this.i;
    }
}
