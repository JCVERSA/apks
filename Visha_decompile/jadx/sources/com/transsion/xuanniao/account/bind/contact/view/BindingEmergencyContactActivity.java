package com.transsion.xuanniao.account.bind.contact.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.p;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.ContactInput;
import com.transsion.xuanniao.account.comm.widget.EmailInput;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.EmergencyListRes;
import defpackage.an7;
import defpackage.dl7;
import defpackage.el7;
import defpackage.fp7;
import defpackage.hm7;
import defpackage.on7;
import defpackage.qo7;
import defpackage.rm7;
import defpackage.un7;
import defpackage.vn7;
import defpackage.xj;
import java.io.Serializable;

public class BindingEmergencyContactActivity extends BaseActivity implements qo7 {
    public static final int o = 0;
    public ContactInput f;
    public PhoneInput g;
    public EmailInput h;
    public vn7 i;
    public p j;
    public RelativeLayout m;
    public int e = 1001;
    public int k = 0;
    public int l = 0;
    public boolean n = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.bindBtn) {
                BindingEmergencyContactActivity bindingEmergencyContactActivity = BindingEmergencyContactActivity.this;
                bindingEmergencyContactActivity.getClass();
                xj.U(bindingEmergencyContactActivity).d();
                if (!TextUtils.isEmpty(BindingEmergencyContactActivity.this.g.getText()) && !BindingEmergencyContactActivity.this.g.getText().matches("^[0-9]{6,15}$")) {
                    BindingEmergencyContactActivity bindingEmergencyContactActivity2 = BindingEmergencyContactActivity.this;
                    bindingEmergencyContactActivity2.y0(bindingEmergencyContactActivity2.getString(R.string.xn_phone_not_exist));
                } else if (TextUtils.isEmpty(BindingEmergencyContactActivity.this.h.getText()) || BindingEmergencyContactActivity.this.h.getText().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$")) {
                    BindingEmergencyContactActivity.this.i.c();
                } else {
                    BindingEmergencyContactActivity bindingEmergencyContactActivity3 = BindingEmergencyContactActivity.this;
                    bindingEmergencyContactActivity3.y0(bindingEmergencyContactActivity3.getString(R.string.xn_email_not_exist));
                }
            }
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            BindingEmergencyContactActivity bindingEmergencyContactActivity = BindingEmergencyContactActivity.this;
            int i = BindingEmergencyContactActivity.o;
            bindingEmergencyContactActivity.findViewById(R.id.bindBtn).setEnabled(bindingEmergencyContactActivity.f.getText().trim().length() > 0 && (bindingEmergencyContactActivity.g.getText().matches("^[0-9]{6,15}$") || bindingEmergencyContactActivity.h.getText().trim().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$")));
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void W() {
        this.g.setCc(this.i.f());
    }

    @Override
    public String k() {
        return this.i.d() + "-" + this.g.getText();
    }

    @Override
    public String m() {
        return this.h.getText();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1 && intent != null) {
            this.i.b = intent.getStringExtra("key_cc");
            this.g.setCc(this.i.f());
            this.i.c = intent.getStringExtra("key_name_en");
        }
        this.j.b(i, intent);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x011a  */
    @Override
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_binding_emergency_contact);
        vn7 vn7Var = new vn7();
        this.i = vn7Var;
        vn7Var.a = this;
        Serializable serializableExtra = getIntent().getSerializableExtra("emergency");
        if (serializableExtra instanceof EmergencyListRes.Emergency) {
            EmergencyListRes.Emergency emergency = (EmergencyListRes.Emergency) serializableExtra;
            vn7 vn7Var2 = this.i;
            vn7Var2.e = emergency;
            String str2 = emergency.phone;
            vn7Var2.b = (!TextUtils.isEmpty(str2) && str2.contains("-")) ? str2.substring(0, str2.indexOf("-")) : "";
        }
        getActionBar().setTitle(getString(R.string.xn_add_to_account));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        this.m = (RelativeLayout) findViewById(R.id.inputL);
        this.f = (ContactInput) findViewById(R.id.contactInput);
        this.g = (PhoneInput) findViewById(R.id.phoneInput);
        this.h = (EmailInput) findViewById(R.id.emailInput);
        this.g.setCc(this.i.f());
        this.f.setStartLogoVisible(0);
        findViewById(R.id.bindBtn).setOnClickListener(new a());
        this.j = new p(this, new dl7(this));
        this.g.setInputListener(new hm7(this));
        this.f.setClickContact(new an7(this));
        this.h.setAssociationListener(new un7(this));
        b bVar = new b();
        this.f.OppO00p.addTextChangedListener(bVar);
        this.g.OppO00p.addTextChangedListener(bVar);
        this.h.OppO00p.addTextChangedListener(bVar);
        ContactInput contactInput = this.f;
        EmergencyListRes.Emergency emergency2 = this.i.e;
        contactInput.setText(emergency2 != null ? emergency2.userName : "");
        PhoneInput phoneInput = this.g;
        vn7 vn7Var3 = this.i;
        EmergencyListRes.Emergency emergency3 = vn7Var3.e;
        if (emergency3 == null || TextUtils.isEmpty(emergency3.phone) || !vn7Var3.e.phone.contains("-")) {
            str = "";
        } else {
            String[] strArrSplit = vn7Var3.e.phone.split("-");
            if (strArrSplit.length > 1) {
                str = strArrSplit[1];
            } else {
                str = "";
            }
        }
        phoneInput.setText(str);
        EmailInput emailInput = this.h;
        EmergencyListRes.Emergency emergency4 = this.i.e;
        emailInput.setText(emergency4 != null ? emergency4.email : "");
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        xj.U(this).g();
        vn7 vn7Var4 = this.i;
        new on7().a(vn7Var4.b(), new el7(vn7Var4, vn7Var4.b(), CountryData.class));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        vn7 vn7Var = this.i;
        if (vn7Var != null) {
            vn7Var.a = null;
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.j.c(i, iArr);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.f.setText((String) fp7.a(bundle.get("contact"), String.class));
        this.g.setText((String) fp7.a(bundle.get("phone"), String.class));
        this.h.setText((String) fp7.a(bundle.get(NotificationCompat.CATEGORY_EMAIL), String.class));
    }

    @Override
    public void onResume() {
        super.onResume();
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
        EmailInput emailInput = this.h;
        if (emailInput == null || TextUtils.isEmpty(emailInput.getText()) || !this.h.getEdit().hasFocus() || !this.n) {
            return;
        }
        this.n = false;
        this.h.OppO0Op();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("contact", this.f.getText());
        bundle.putString("phone", this.g.getText());
        bundle.putString(NotificationCompat.CATEGORY_EMAIL, this.h.getText());
    }

    @Override
    public void onStop() {
        super.onStop();
        EmailInput emailInput = this.h;
        if (emailInput == null || !emailInput.OppO0OO()) {
            return;
        }
        this.n = true;
        this.h.OppO00p();
    }

    @Override
    public void onSuccess() {
        EmergencyListRes.Emergency emergency = new EmergencyListRes.Emergency();
        emergency.id = this.i.e();
        emergency.email = this.h.getText();
        emergency.phone = TextUtils.isEmpty(this.g.getText()) ? "" : k();
        emergency.userName = this.f.getText();
        Intent intent = new Intent();
        intent.putExtra("emergency", emergency);
        setResult(-1, intent);
        finish();
    }

    @Override
    public CharSequence q0() {
        return this.g.getText();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.f.getEdit(), motionEvent) || t0(this.g.getEdit(), motionEvent) || t0(this.h.getEdit(), motionEvent)) ? false : true;
    }

    @Override
    public String x() {
        return this.f.getText();
    }
}
