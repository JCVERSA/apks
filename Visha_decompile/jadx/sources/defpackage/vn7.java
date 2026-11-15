package defpackage;

import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.contact.view.BindingEmergencyContactActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.model.data.AddContactReq;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.EmergencyListRes;
import com.transsion.xuanniao.account.model.data.UpdateContactReq;
import org.slf4j.Marker;

public class vn7 extends BasePresenter {
    public String b;
    public String c;
    public mo7 d = new mo7();
    public EmergencyListRes.Emergency e;
    public CountryData f;

    public final BindingEmergencyContactActivity b() {
        return (BindingEmergencyContactActivity) ((qo7) this.a).J();
    }

    public void c() {
        if (TextUtils.isEmpty(e())) {
            b().u0(b().getString(R.string.xn_loading));
            AddContactReq addContactReq = new AddContactReq();
            addContactReq.userName = ((qo7) this.a).x();
            addContactReq.email = ((qo7) this.a).m();
            if (!TextUtils.isEmpty(((qo7) this.a).q0())) {
                addContactReq.phone = ((qo7) this.a).k();
            }
            mo7 mo7Var = this.d;
            BindingEmergencyContactActivity bindingEmergencyContactActivityB = b();
            im7 im7Var = new im7(this, b(), BaseData.class);
            mo7Var.getClass();
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(bindingEmergencyContactActivityB)) {
                new zn7().c(bindingEmergencyContactActivityB, dp7.a("/app/contact/new"), addContactReq, im7Var);
                return;
            }
            if (bindingEmergencyContactActivityB != null) {
                bindingEmergencyContactActivityB.A0();
            }
            if (bindingEmergencyContactActivityB != null) {
                cr7Var.b(bindingEmergencyContactActivityB);
                return;
            }
            return;
        }
        b().u0(b().getString(R.string.xn_loading));
        UpdateContactReq updateContactReq = new UpdateContactReq();
        updateContactReq.userName = ((qo7) this.a).x();
        updateContactReq.email = ((qo7) this.a).m();
        if (!TextUtils.isEmpty(((qo7) this.a).q0())) {
            updateContactReq.phone = ((qo7) this.a).k();
        }
        updateContactReq.id = e();
        mo7 mo7Var2 = this.d;
        BindingEmergencyContactActivity bindingEmergencyContactActivityB2 = b();
        bn7 bn7Var = new bn7(this, b(), BaseData.class);
        mo7Var2.getClass();
        cr7 cr7Var2 = cr7.b.a;
        if (cr7Var2.a(bindingEmergencyContactActivityB2)) {
            new zn7().c(bindingEmergencyContactActivityB2, dp7.a("/app/contact/update"), updateContactReq, bn7Var);
            return;
        }
        if (bindingEmergencyContactActivityB2 != null) {
            bindingEmergencyContactActivityB2.A0();
        }
        if (bindingEmergencyContactActivityB2 != null) {
            cr7Var2.b(bindingEmergencyContactActivityB2);
        }
    }

    public String d() {
        if (TextUtils.isEmpty(this.b)) {
            CountryData countryData = this.f;
            if (countryData == null || countryData.countries == null) {
                return "";
            }
            this.b = CountryData.getCountryCode(((qo7) this.a).J(), this.f.countries);
        }
        return this.b;
    }

    public String e() {
        EmergencyListRes.Emergency emergency = this.e;
        return emergency != null ? emergency.id : "";
    }

    public String f() {
        if (TextUtils.isEmpty(d())) {
            return "";
        }
        StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
        sbA.append(d());
        return sbA.toString();
    }
}
