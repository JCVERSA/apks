package com.transsion.xuanniao.account.center.view;

import OppOOO.OppO;
import OppOOO.OppO0pp;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.ContactInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.NormalInput;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import com.transsion.xuanniao.account.model.data.BaseEncryptRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import defpackage.bp7;
import defpackage.ep7;
import defpackage.fn7;
import defpackage.fp7;
import defpackage.jn7;
import defpackage.kp7;
import defpackage.lp7;
import defpackage.olb;
import defpackage.on7;
import defpackage.rm7;
import defpackage.to7;
import defpackage.uo7;
import defpackage.xj;
import defpackage.yn7;
import java.io.Serializable;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

public class EditAddressActivity extends BaseActivity implements lp7 {
    public static final int C = 0;
    public ContactInput g;
    public PhoneInput h;
    public NormalInput i;
    public NormalInput j;
    public NormalInput k;
    public NormalInput l;
    public ErrorView m;
    public ErrorView n;
    public ErrorView o;
    public jn7 p;
    public p q;
    public OverBoundNestedScrollView u;
    public RelativeLayout v;
    public ImageView w;
    public ep7 x;
    public TextView y;
    public TextView z;
    public int e = 1001;
    public int f = 1003;
    public boolean r = false;
    public boolean s = false;
    public boolean t = false;
    public final c A = new c();
    public long B = -1;

    public class a implements DialogInterface.OnDismissListener {
        public a() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            EditAddressActivity.this.t = false;
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            EditAddressActivity.this.finish();
        }
    }

    public class c extends rm7 {
        public c() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.regionL) {
                Intent intent = new Intent(EditAddressActivity.this, (Class<?>) CountrySelectActivity.class);
                String code = EditAddressActivity.this.p.g;
                if (TextUtils.isEmpty(code)) {
                    EditAddressActivity editAddressActivity = EditAddressActivity.this;
                    editAddressActivity.getClass();
                    jn7 jn7Var = EditAddressActivity.this.p;
                    code = CountryData.getCode(editAddressActivity, jn7Var.f, jn7Var.e());
                }
                intent.putExtra("countryCode", code);
                intent.putExtra("countryName", EditAddressActivity.this.p.f);
                intent.putExtra("notShowCode", true);
                EditAddressActivity editAddressActivity2 = EditAddressActivity.this;
                editAddressActivity2.startActivityForResult(intent, editAddressActivity2.f);
                return;
            }
            if (view.getId() == R.id.labelL) {
                EditAddressActivity editAddressActivity3 = EditAddressActivity.this;
                int i = EditAddressActivity.C;
                editAddressActivity3.findViewById(R.id.blankL).setVisibility(0);
                editAddressActivity3.u.getViewTreeObserver().addOnGlobalLayoutListener(new OppO0pp(editAddressActivity3));
                if (editAddressActivity3.x == null) {
                    ep7 ep7Var = new ep7(editAddressActivity3, null, 0, R.style.label_popupWindow);
                    editAddressActivity3.x = ep7Var;
                    ep7Var.d = editAddressActivity3;
                    ep7Var.setWidth(editAddressActivity3.v.getWidth());
                }
                editAddressActivity3.u.postDelayed(new OppO(editAddressActivity3), 120L);
            }
        }
    }

    public class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            EditAddressActivity editAddressActivity = EditAddressActivity.this;
            if (editAddressActivity.r) {
                editAddressActivity.m.setVisibility(4);
            }
            EditAddressActivity editAddressActivity2 = EditAddressActivity.this;
            if (editAddressActivity2.s) {
                editAddressActivity2.n.setVisibility(4);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public final void E0() {
        if (this.t) {
            return;
        }
        new com.transsion.widgetslib.dialog.d.a(this, R.style.dialog_soft_input).k(getString(R.string.xn_give_up_edit)).w(getString(R.string.xn_give_up), new b()).n(getString(R.string.xn_cancel), null).s(new a()).F();
        this.t = true;
    }

    public final boolean F0() {
        if (TextUtils.isEmpty(this.g.getText()) && TextUtils.isEmpty(this.i.getText()) && TextUtils.isEmpty(this.h.getText()) && TextUtils.isEmpty(this.j.getText()) && TextUtils.isEmpty(this.k.getText()) && TextUtils.isEmpty(this.l.getText())) {
            jn7 jn7Var = this.p;
            if (jn7Var.h == 0 && TextUtils.isEmpty(jn7Var.f) && !((Switch) findViewById(R.id.defaultSwitch)).isChecked()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public String M() {
        return this.l.getText();
    }

    @Override
    public boolean O() {
        return ((Switch) findViewById(R.id.defaultSwitch)).isChecked();
    }

    @Override
    public String R() {
        return this.k.getText();
    }

    @Override
    public void V() {
        findViewById(R.id.blankL).setVisibility(8);
        this.w.setImageResource(R.drawable.down_arrow_drawable);
    }

    @Override
    public String i0() {
        return this.i.getText();
    }

    @Override
    public String k() {
        return this.p.g() + "-" + this.h.getText();
    }

    @Override
    public void k0(int i) {
        jn7 jn7Var = this.p;
        jn7Var.h = i;
        if (i == 0) {
            this.y.setText(getString(R.string.xn_please_select));
            this.y.setTextAppearance(R.style.font_black_15_t25);
            this.p.i = "";
        } else {
            jn7Var.i = ep7.d(this)[i];
            this.y.setText(this.p.h());
            this.y.setTextAppearance(R.style.font_black_15);
        }
    }

    @Override
    public void l() {
        this.h.setCc(this.p.f());
    }

    @Override
    public String m0() {
        return this.j.getText();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e) {
            if (i2 == -1) {
                this.p.d = intent.getStringExtra("key_cc");
                this.p.e = intent.getStringExtra("key_name_en");
                this.h.setCc(this.p.f());
            }
        } else if (i == this.f && i2 == -1 && intent != null) {
            this.p.f = intent.getStringExtra("key_name");
            this.p.g = intent.getStringExtra("key_cc");
            TextView textView = (TextView) findViewById(R.id.region);
            textView.setText(this.p.f);
            textView.setTextAppearance(R.style.font_black_15);
            this.o.setVisibility(4);
            if (TextUtils.isEmpty(xj.U(getApplicationContext()).T())) {
                xj.U(getApplicationContext()).y1(intent.getStringExtra("key_cc"));
            }
        }
        this.q.b(i, intent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_edit_address);
        jn7 jn7Var = new jn7();
        this.p = jn7Var;
        jn7Var.a = this;
        new on7().a(jn7Var.c(), new fn7(jn7Var, jn7Var.c(), CountryData.class));
        getActionBar().setHomeAsUpIndicator(olb.B(olb.g));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        int intExtra = getIntent().getIntExtra("title", -1);
        if (intExtra != -1) {
            getActionBar().setTitle(getString(intExtra));
        }
        this.z = (TextView) findViewById(R.id.region);
        this.g = (ContactInput) findViewById(R.id.contactInput);
        this.h = (PhoneInput) findViewById(R.id.phoneInput);
        this.i = (NormalInput) findViewById(R.id.addressDetailInput);
        this.j = (NormalInput) findViewById(R.id.provinceInput);
        this.k = (NormalInput) findViewById(R.id.districtInput);
        this.l = (NormalInput) findViewById(R.id.postcodeInput);
        this.m = (ErrorView) findViewById(R.id.contactError);
        this.n = (ErrorView) findViewById(R.id.phoneError);
        this.o = (ErrorView) findViewById(R.id.regionError);
        this.w = (ImageView) findViewById(R.id.down_arrow);
        int i = R.id.label;
        this.y = (TextView) findViewById(i);
        this.v = (RelativeLayout) findViewById(R.id.labelL);
        OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) findViewById(R.id.scrollView);
        this.u = overBoundNestedScrollView;
        overBoundNestedScrollView.setUpOverScroll();
        this.m.setErrorText(getString(R.string.xn_full_name_empty));
        this.n.setErrorText(getString(R.string.xn_phone_empty));
        this.o.setErrorText(getString(R.string.xn_region_empty));
        this.q = new p(this, new com.transsion.xuanniao.account.center.view.b(this));
        this.h.setInputListener(new yn7(this));
        d dVar = new d();
        this.h.OppO00p.addTextChangedListener(dVar);
        this.g.OppO00p.addTextChangedListener(dVar);
        this.g.setClickContact(new to7(this));
        findViewById(R.id.regionL).setOnClickListener(this.A);
        this.v.setOnClickListener(this.A);
        this.h.setEditFocus(new bp7(this));
        this.g.setEditFocus(new kp7(this));
        Serializable serializableExtra = getIntent().getSerializableExtra("address");
        if (serializableExtra instanceof AddressesListRes.Address) {
            jn7 jn7Var2 = this.p;
            AddressesListRes.Address address = (AddressesListRes.Address) serializableExtra;
            jn7Var2.c = address;
            jn7Var2.g = address.countryCode;
            this.g.setText(address.userName);
            String str = address.phone;
            if (str != null && str.contains("-")) {
                String[] strArrSplit = address.phone.split("-");
                if (strArrSplit.length == 2) {
                    jn7 jn7Var3 = this.p;
                    jn7Var3.d = strArrSplit[0];
                    this.h.setCc(jn7Var3.f());
                    this.h.setText(strArrSplit[1]);
                }
            }
            jn7 jn7Var4 = this.p;
            String str2 = address.country;
            jn7Var4.f = str2;
            jn7Var4.g = address.countryCode;
            if (!TextUtils.isEmpty(str2)) {
                this.z.setText(address.country);
                this.z.setTextAppearance(R.style.font_black_15);
            }
            this.i.setText(address.address);
            this.j.setText(address.province);
            this.k.setText(address.district);
            this.l.setText(address.postalCode);
            if (!TextUtils.isEmpty(address.label)) {
                this.p.i = address.label;
                TextView textView = (TextView) findViewById(i);
                textView.setText(this.p.h());
                textView.setTextAppearance(R.style.font_black_15);
            }
            ((Switch) findViewById(R.id.defaultSwitch)).setChecked(address.defaultFlag);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_save, menu);
        menu.getItem(0).setEnabled(true);
        return true;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ep7 ep7Var = this.x;
        if (ep7Var != null) {
            ep7Var.d = null;
        }
        jn7 jn7Var = this.p;
        if (jn7Var != null) {
            jn7Var.a = null;
        }
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || F0()) {
            return super.onKeyDown(i, keyEvent);
        }
        E0();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0072  */
    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        jn7 jn7Var;
        if (menuItem.getItemId() == R.id.save) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.B;
            if (j != 0 && jElapsedRealtime - j < 1000) {
                return super.onOptionsItemSelected(menuItem);
            }
            this.B = jElapsedRealtime;
            if (TextUtils.isEmpty(this.g.getText().trim())) {
                this.m.setVisibility(0);
                z = false;
            } else {
                z = true;
            }
            if (TextUtils.isEmpty(this.h.getText())) {
                this.n.setVisibility(0);
            } else {
                if (!this.h.getText().matches("^[0-9]{6,15}$")) {
                    y0(getString(R.string.xn_phone_not_exist));
                }
                if (TextUtils.isEmpty(this.p.f)) {
                    this.o.setVisibility(0);
                    z = false;
                }
                if (z) {
                    jn7Var = this.p;
                    if (jn7Var.c != null) {
                        jn7Var.c().u0(jn7Var.c().getString(R.string.xn_loading));
                        try {
                            jn7Var.b.c(jn7Var.c(), jn7Var.b(jn7Var.c.id), new uo7(jn7Var, jn7Var.c(), BaseEncryptRes.class));
                        } catch (Exception e) {
                            e.printStackTrace();
                            jn7Var.c().A0();
                            jn7Var.c().y0(jn7Var.c().getString(R.string.xn_net_unavailable));
                        }
                    } else {
                        jn7Var.d();
                    }
                }
                xj.U(this).j("save");
            }
            z = false;
            if (TextUtils.isEmpty(this.p.f)) {
                this.o.setVisibility(0);
                z = false;
            }
            if (z) {
                jn7Var = this.p;
                if (jn7Var.c != null) {
                    jn7Var.c().u0(jn7Var.c().getString(R.string.xn_loading));
                    jn7Var.b.c(jn7Var.c(), jn7Var.b(jn7Var.c.id), new uo7(jn7Var, jn7Var.c(), BaseEncryptRes.class));
                } else {
                    jn7Var.d();
                }
            }
            xj.U(this).j("save");
        }
        if (menuItem.getItemId() == 16908332) {
            xj.U(this).j("cancel");
            if (F0()) {
                finish();
            } else {
                E0();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.q.c(i, iArr);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.g.setText((String) fp7.a(bundle.get("contact"), String.class));
        this.h.setText((String) fp7.a(bundle.get("phone"), String.class));
        if (bundle.containsKey(TtmlNode.TAG_REGION)) {
            this.p.f = bundle.getString(TtmlNode.TAG_REGION);
            this.z.setText(this.p.f);
        }
        if (bundle.containsKey("regionCode")) {
            this.p.g = bundle.getString("regionCode");
        }
        this.i.setText((String) fp7.a(bundle.get("address"), String.class));
        this.j.setText((String) fp7.a(bundle.get("province"), String.class));
        this.k.setText((String) fp7.a(bundle.get("district"), String.class));
        this.l.setText((String) fp7.a(bundle.get("postcode"), String.class));
        this.p.i = (String) fp7.a(bundle.get(AnnotatedPrivateKey.LABEL), String.class);
        this.p.h = bundle.getInt("labelSelect");
        this.p.d = bundle.getString("countryCode");
        this.h.setCc(this.p.f());
        if (TextUtils.isEmpty(this.p.h())) {
            k0(this.p.h);
        } else {
            this.y.setTextAppearance(R.style.font_black_15);
            this.y.setText(this.p.h());
        }
        String string = bundle.getString("hasFocus");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (string.equals("contactInput")) {
            this.g.getEdit().requestFocus();
            return;
        }
        if (string.equals("phoneInput")) {
            this.h.getEdit().requestFocus();
            return;
        }
        if (string.equals("addressDetailInput")) {
            this.i.getEdit().requestFocus();
            return;
        }
        if (string.equals("provinceInput")) {
            this.j.getEdit().requestFocus();
            return;
        }
        if (string.equals("districtInput")) {
            this.k.getEdit().requestFocus();
        } else if (string.equals("postcodeInput")) {
            bundle.putString("hasFocus", "postcodeInput");
            this.l.getEdit().requestFocus();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("contact", this.g.getText());
        bundle.putString("phone", this.h.getText());
        bundle.putInt("labelSelect", this.p.h);
        bundle.putString(AnnotatedPrivateKey.LABEL, this.p.h());
        if (!TextUtils.isEmpty(this.p.f)) {
            bundle.putString(TtmlNode.TAG_REGION, this.p.f);
        }
        if (!TextUtils.isEmpty(this.p.g)) {
            bundle.putString("regionCode", this.p.g);
        }
        bundle.putString("address", this.i.getText());
        bundle.putString("province", this.j.getText());
        bundle.putString("district", this.k.getText());
        bundle.putString("postcode", this.l.getText());
        bundle.putString("countryCode", this.p.g());
        if (this.g.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "contactInput");
            return;
        }
        if (this.h.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "phoneInput");
            return;
        }
        if (this.i.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "addressDetailInput");
            return;
        }
        if (this.j.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "provinceInput");
        } else if (this.k.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "districtInput");
        } else if (this.l.getEdit().hasFocus()) {
            bundle.putString("hasFocus", "postcodeInput");
        }
    }

    @Override
    public void onSuccess() {
        setResult(-1);
        finish();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.g.getEdit(), motionEvent) || t0(this.h.getEdit(), motionEvent) || t0(this.j.getEdit(), motionEvent) || t0(this.k.getEdit(), motionEvent) || t0(this.l.getEdit(), motionEvent) || t0(this.i.getEdit(), motionEvent)) ? false : true;
    }

    @Override
    public String x() {
        return this.g.getText();
    }
}
