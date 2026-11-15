package com.transsion.xuanniao.account.center.view;

import OppOOO.OppOOp;
import OppOOO0.OppOOp0;
import OppOp00.OppO0Op;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Base64;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.transsion.livecaption.constant.ICode;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.e.a;
import com.transsion.xuanniao.account.center.view.e.c;
import com.transsion.xuanniao.account.center.view.j.a;
import com.transsion.xuanniao.account.center.view.j.c;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.NickNameInput;
import com.transsion.xuanniao.account.comm.widget.RoundImageView;
import com.transsion.xuanniao.account.login.view.CountrySelectActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import defpackage.am7;
import defpackage.ao7;
import defpackage.as7;
import defpackage.br7;
import defpackage.eq7;
import defpackage.fkb;
import defpackage.gr7;
import defpackage.hk7;
import defpackage.jq7;
import defpackage.lk7;
import defpackage.lq7;
import defpackage.lr7;
import defpackage.on7;
import defpackage.op7;
import defpackage.pp7;
import defpackage.pq7;
import defpackage.pr7;
import defpackage.rm7;
import defpackage.rq7;
import defpackage.sm7;
import defpackage.tr7;
import defpackage.vq7;
import defpackage.vr7;
import defpackage.wk7;
import defpackage.xj;
import defpackage.xp7;
import defpackage.xr7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import rq7.b;

public class PersonInfoActivity extends BaseActivity implements jq7 {
    public static final int k = 0;
    public OppOOp0 f;
    public com.transsion.xuanniao.account.center.view.a g;
    public o h;
    public TextView i;
    public int e = 1001;
    public boolean j = false;

    public class a implements OppOp00.a.InterfaceC0003a {
        public final AccountRes a;
        public final RoundImageView b;

        public a(AccountRes accountRes, RoundImageView roundImageView) {
            this.a = accountRes;
            this.b = roundImageView;
        }

        @Override
        public void F(String str) {
            if (str == null) {
                str = this.a.avatarUrl;
            }
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(PersonInfoActivity.this.getApplicationContext()).load(str);
            PersonInfoActivity personInfoActivity = PersonInfoActivity.this;
            int i = PersonInfoActivity.k;
            personInfoActivity.getClass();
            RequestOptions requestOptions = new RequestOptions();
            int i2 = R.drawable.xn_portrait_default;
            requestBuilderLoad.apply((BaseRequestOptions<?>) requestOptions.fallback(i2).error(i2)).into(this.b);
        }
    }

    public class b implements OppOp00.a.InterfaceC0003a {
        public b() {
        }

        @Override
        public void F(String str) {
            PersonInfoActivity.this.u();
        }
    }

    public class c extends rm7 {

        public class a implements rq7.a {
            public a() {
            }
        }

        public class b implements com.transsion.xuanniao.account.center.view.e.b {
            public b() {
            }
        }

        public class C0275c implements h.a {
            public C0275c() {
            }
        }

        public class d implements com.transsion.xuanniao.account.center.view.d.a {
            public d() {
            }
        }

        public class e implements j.b {
            public e() {
            }
        }

        public c() {
        }

        @Override
        public void b(View view) {
            String str;
            if (view.getId() == R.id.portrait) {
                PersonInfoActivity personInfoActivity = PersonInfoActivity.this;
                personInfoActivity.getClass();
                xj.U(personInfoActivity).S0();
                if (PersonInfoActivity.this.h.d()) {
                    PersonInfoActivity.this.h.h();
                    return;
                }
                return;
            }
            if (view.getId() == R.id.nicknameL) {
                PersonInfoActivity personInfoActivity2 = PersonInfoActivity.this;
                personInfoActivity2.getClass();
                xj.U(personInfoActivity2).R0();
                rq7 rq7Var = new rq7();
                rq7Var.b = new a();
                WeakReference weakReference = new WeakReference(PersonInfoActivity.this);
                AccountRes accountRes = PersonInfoActivity.this.f.c;
                str = accountRes != null ? accountRes.nickname : "";
                if (rq7Var.a == null && weakReference.get() != null) {
                    com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a((Context) weakReference.get(), R.style.dialog_soft_input).D(R.layout.xn_modify_nickname).B(((Context) weakReference.get()).getString(R.string.xn_modify_nickname)).w(((Context) weakReference.get()).getString(R.string.xn_confirm), null).n(((Context) weakReference.get()).getString(R.string.xn_cancel), new op7(rq7Var, weakReference)).a();
                    rq7Var.a = dVarA;
                    dVarA.show();
                    rq7Var.a.setOnShowListener(new xp7(rq7Var, weakReference));
                    Button buttonE = rq7Var.a.e(-1);
                    rq7Var.d = buttonE;
                    buttonE.setOnClickListener(new eq7(rq7Var, weakReference));
                    NickNameInput nickNameInput = (NickNameInput) rq7Var.a.findViewById(R.id.nickNameInput);
                    rq7Var.c = nickNameInput;
                    nickNameInput.OppO00p.addTextChangedListener(rq7Var.new b());
                    rq7Var.a.setOnDismissListener(new lq7(rq7Var));
                } else if (!rq7Var.a.isShowing()) {
                    rq7Var.a.show();
                }
                if (!TextUtils.isEmpty(str)) {
                    rq7Var.c.setText(str);
                }
                rq7Var.d.setEnabled(rq7Var.c.getText().length() > 0);
                rq7Var.c.getEdit().setFocusable(true);
                rq7Var.c.getEdit().setFocusableInTouchMode(true);
                rq7Var.c.getEdit().requestFocus();
                return;
            }
            if (view.getId() == R.id.usernameL) {
                PersonInfoActivity personInfoActivity3 = PersonInfoActivity.this;
                personInfoActivity3.getClass();
                xj.U(personInfoActivity3).K0();
                PersonInfoActivity personInfoActivity4 = PersonInfoActivity.this;
                AccountRes accountRes2 = personInfoActivity4.f.c;
                if (accountRes2 != null && accountRes2.usernameModifyRemainTimes <= 0) {
                    xj.U(personInfoActivity4).D();
                    personInfoActivity4.y0(personInfoActivity4.getString(R.string.xn_cannot_modify));
                    return;
                } else {
                    com.transsion.xuanniao.account.center.view.a aVar = new com.transsion.xuanniao.account.center.view.a();
                    personInfoActivity4.g = aVar;
                    aVar.a(personInfoActivity4, accountRes2 != null ? accountRes2.username : "");
                    personInfoActivity4.g.c = new n(personInfoActivity4);
                    return;
                }
            }
            if (view.getId() == R.id.fullNameL) {
                PersonInfoActivity personInfoActivity5 = PersonInfoActivity.this;
                personInfoActivity5.getClass();
                xj.U(personInfoActivity5).Q0();
                com.transsion.xuanniao.account.center.view.e eVar = new com.transsion.xuanniao.account.center.view.e();
                PersonInfoActivity personInfoActivity6 = PersonInfoActivity.this;
                personInfoActivity6.getClass();
                AccountRes accountRes3 = PersonInfoActivity.this.f.c;
                str = accountRes3 != null ? accountRes3.fullName : "";
                com.transsion.widgetslib.dialog.d dVar = eVar.a;
                if (dVar == null) {
                    eVar.g = personInfoActivity6;
                    com.transsion.widgetslib.dialog.d dVarA2 = new com.transsion.widgetslib.dialog.d.a(personInfoActivity6, R.style.dialog_soft_input).D(R.layout.xn_edit_full_name_view).B(personInfoActivity6.getString(R.string.xn_modify_full_name)).w(personInfoActivity6.getString(R.string.xn_confirm), null).n(personInfoActivity6.getString(R.string.xn_cancel), new gr7(eVar, personInfoActivity6)).a();
                    eVar.a = dVarA2;
                    dVarA2.setOnShowListener(new lr7(eVar, personInfoActivity6));
                    eVar.a.show();
                    eVar.c = eVar.a.e(-1);
                    eVar.b = (EditText) eVar.a.findViewById(R.id.fullNameEdit);
                    View viewFindViewById = eVar.a.findViewById(R.id.xn_delete_all);
                    eVar.f = viewFindViewById;
                    viewFindViewById.setOnClickListener(new pr7(eVar));
                    eVar.d = (TextView) eVar.a.findViewById(R.id.num);
                    eVar.e = eVar.a.findViewById(R.id.line);
                    eVar.c.setOnClickListener(new f(eVar, personInfoActivity6));
                    eVar.b.addTextChangedListener(eVar.new c());
                    eVar.b.setOnFocusChangeListener(eVar.new a());
                } else if (!dVar.isShowing()) {
                    eVar.a.show();
                }
                eVar.b.setText(str);
                eVar.b.setSelection(eVar.b.getText().length());
                eVar.d.setText(String.format(Locale.getDefault(), "%d / %d", Integer.valueOf(eVar.b.getText().toString().length()), 50));
                eVar.h = new b();
                return;
            }
            if (view.getId() == R.id.genderL) {
                PersonInfoActivity personInfoActivity7 = PersonInfoActivity.this;
                personInfoActivity7.getClass();
                xj.U(personInfoActivity7).O0();
                h hVar = new h();
                hVar.c = new C0275c();
                PersonInfoActivity personInfoActivity8 = PersonInfoActivity.this;
                personInfoActivity8.getClass();
                int iH = PersonInfoActivity.this.f.h();
                hVar.b = personInfoActivity8;
                hVar.d = iH;
                int i = iH - 1;
                int i2 = (i == 0 || i == 1) ? i : 2;
                String[] strArr = {personInfoActivity8.getString(R.string.xn_man), hVar.b.getString(R.string.xn_female), hVar.b.getString(R.string.xn_secrecy)};
                com.transsion.widgetslib.dialog.d dVar2 = hVar.a;
                if (dVar2 == null) {
                    hVar.a = new com.transsion.widgetslib.dialog.d.a(hVar.b, R.style.dialog_soft_input).B(hVar.b.getString(R.string.xn_select_gender)).z(strArr, i2, new g(hVar, iH)).n(hVar.b.getString(R.string.xn_cancel), new tr7(hVar)).F();
                    return;
                } else {
                    if (dVar2.isShowing()) {
                        return;
                    }
                    hVar.a.show();
                    return;
                }
            }
            if (view.getId() == R.id.birthdayL) {
                xj.U(PersonInfoActivity.this.getApplicationContext()).N0();
                com.transsion.xuanniao.account.center.view.d dVar3 = new com.transsion.xuanniao.account.center.view.d();
                dVar3.c = new d();
                WeakReference weakReference2 = new WeakReference(PersonInfoActivity.this);
                AccountRes accountRes4 = PersonInfoActivity.this.f.c;
                String str2 = accountRes4 != null ? accountRes4.birthday : null;
                int iA = pp7.a();
                int i3 = Calendar.getInstance().get(2) + 1;
                int i4 = Calendar.getInstance().get(5);
                if (!TextUtils.isEmpty(str2)) {
                    String[] strArrSplit = str2.split("-");
                    if (strArrSplit.length >= 3) {
                        dVar3.b = str2;
                        iA = Integer.parseInt(strArrSplit[0]);
                        i3 = Integer.parseInt(strArrSplit[1]);
                        i4 = Integer.parseInt(strArrSplit[2]);
                    }
                }
                dVar3.a(iA, i3, i4);
                if (weakReference2.get() == null) {
                    return;
                }
                com.transsion.widgetslib.dialog.a aVarQ = new com.transsion.widgetslib.dialog.a((Context) weakReference2.get(), iA, i3 - 1, i4).u(((Context) weakReference2.get()).getString(R.string.xn_birthday)).t(((Context) weakReference2.get()).getString(R.string.xn_confirm), new com.transsion.xuanniao.account.center.view.c(dVar3, weakReference2)).p(((Context) weakReference2.get()).getString(R.string.xn_cancel), new vq7(dVar3, weakReference2)).q(new pq7(dVar3));
                dVar3.a = aVarQ;
                aVarQ.v(pp7.a() - 99, pp7.a());
                dVar3.a.setFormat(OSDateTimePicker.FORMAT_Y_M_D);
                dVar3.a.h().show();
                dVar3.a.r(new br7(dVar3));
                return;
            }
            if (view.getId() != R.id.signatureL) {
                if (view.getId() != R.id.regionL) {
                    if (view.getId() == R.id.addressL) {
                        PersonInfoActivity personInfoActivity9 = PersonInfoActivity.this;
                        personInfoActivity9.getClass();
                        xj.U(personInfoActivity9).G();
                        Intent intent = new Intent(PersonInfoActivity.this, (Class<?>) MyAddressActivity.class);
                        intent.putExtra("addresses", PersonInfoActivity.this.f.j);
                        PersonInfoActivity.this.startActivityForResult(intent, 1008);
                        return;
                    }
                    return;
                }
                PersonInfoActivity personInfoActivity10 = PersonInfoActivity.this;
                personInfoActivity10.getClass();
                xj.U(personInfoActivity10).L0();
                Intent intent2 = new Intent(PersonInfoActivity.this, (Class<?>) CountrySelectActivity.class);
                String code = PersonInfoActivity.this.f.i;
                if (TextUtils.isEmpty(code)) {
                    PersonInfoActivity personInfoActivity11 = PersonInfoActivity.this;
                    personInfoActivity11.getClass();
                    OppOOp0 oppOOp0 = PersonInfoActivity.this.f;
                    String str3 = oppOOp0.g;
                    CountryData countryData = oppOOp0.k;
                    code = CountryData.getCode(personInfoActivity11, str3, countryData != null ? countryData.countries : null);
                }
                intent2.putExtra("countryCode", code);
                AccountRes accountRes5 = PersonInfoActivity.this.f.c;
                intent2.putExtra("countryName", accountRes5 != null ? accountRes5.countryName : "");
                intent2.putExtra("notShowCode", true);
                PersonInfoActivity.this.startActivityForResult(intent2, 1007);
                return;
            }
            PersonInfoActivity personInfoActivity12 = PersonInfoActivity.this;
            personInfoActivity12.getClass();
            xj.U(personInfoActivity12).M0();
            j jVar = new j();
            jVar.h = new e();
            PersonInfoActivity personInfoActivity13 = PersonInfoActivity.this;
            AccountRes accountRes6 = personInfoActivity13.f.c;
            str = accountRes6 != null ? accountRes6.signature : "";
            com.transsion.widgetslib.dialog.d dVar4 = jVar.a;
            if (dVar4 == null) {
                jVar.g = personInfoActivity13;
                com.transsion.widgetslib.dialog.d dVarA3 = new com.transsion.widgetslib.dialog.d.a(personInfoActivity13, R.style.dialog_soft_input).D(R.layout.xn_edit_signature_view).B(personInfoActivity13.getString(R.string.xn_signature)).w(personInfoActivity13.getString(R.string.xn_confirm), null).n(personInfoActivity13.getString(R.string.xn_cancel), new vr7(jVar, personInfoActivity13)).a();
                jVar.a = dVarA3;
                dVarA3.show();
                lk7.a.a.a.postDelayed(new OppOOp(jVar, personInfoActivity13), 200L);
                jVar.c = jVar.a.e(-1);
                jVar.b = (EditText) jVar.a.findViewById(R.id.signatureEdit);
                View viewFindViewById2 = jVar.a.findViewById(R.id.xn_delete_all);
                jVar.f = viewFindViewById2;
                viewFindViewById2.setOnClickListener(new as7(jVar));
                jVar.d = (TextView) jVar.a.findViewById(R.id.num);
                jVar.e = jVar.a.findViewById(R.id.line);
                jVar.c.setOnClickListener(new i(jVar, personInfoActivity13));
                jVar.b.addTextChangedListener(jVar.new c());
                jVar.b.setOnFocusChangeListener(jVar.new a());
            } else if (!dVar4.isShowing()) {
                jVar.a.show();
            }
            if (TextUtils.isEmpty(str)) {
                jVar.d.setText(String.format(Locale.getDefault(), "%d / %d", 0, 50));
                return;
            }
            jVar.b.setText(str);
            jVar.b.setSelection(jVar.b.getText().length());
            jVar.d.setText(String.format(Locale.getDefault(), "%d / %d", Integer.valueOf(jVar.b.getText().toString().length()), 50));
        }
    }

    public final String B0(String str) {
        return TextUtils.isEmpty(str) ? getString(R.string.xn_not_filled_in) : str;
    }

    public final void C0() {
        setContentView(R.layout.xn_activity_person_info);
        OppOOp0 oppOOp0 = new OppOOp0();
        this.f = oppOOp0;
        oppOOp0.a = this;
        if (!this.j) {
            oppOOp0.c(null);
        }
        OppOOp0 oppOOp1 = this.f;
        AccountRes accountResJ = ao7.a.a.j(this);
        oppOOp1.getClass();
        if (accountResJ != null) {
            oppOOp1.c = accountResJ;
            oppOOp1.g = accountResJ.state;
            ((jq7) oppOOp1.a).f0(accountResJ);
        }
        this.f.l();
        getActionBar().setTitle(getString(R.string.xn_person_info));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        this.h = new o(this, new m(this));
        c cVar = new c();
        findViewById(R.id.portrait).setOnClickListener(cVar);
        findViewById(R.id.nicknameL).setOnClickListener(cVar);
        findViewById(R.id.usernameL).setOnClickListener(cVar);
        findViewById(R.id.fullNameL).setOnClickListener(cVar);
        findViewById(R.id.genderL).setOnClickListener(cVar);
        findViewById(R.id.birthdayL).setOnClickListener(cVar);
        findViewById(R.id.regionL).setOnClickListener(cVar);
        findViewById(R.id.addressL).setOnClickListener(cVar);
        findViewById(R.id.signatureL).setOnClickListener(cVar);
        this.i = (TextView) findViewById(R.id.address);
        this.i.setText(TextUtils.isEmpty(fkb.b().a()) ? getString(R.string.xn_not_filled_in) : fkb.b().a());
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        xj.U(this).P0(sm7.e(this.f.c));
        OppOOp0 oppOOp2 = this.f;
        new on7().a(oppOOp2.f(), new xr7(oppOOp2, oppOOp2.f(), CountryData.class));
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    public void F(String str) throws Throwable {
        Bitmap bitmapDecodeFile;
        IOException e;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        String str2 = "";
        if (getFilesDir() != null) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(this.h.c.getPath());
            } catch (Exception e2) {
                e2.printStackTrace();
                bitmapDecodeFile = null;
            }
            RoundImageView roundImageView = (RoundImageView) findViewById(R.id.portrait);
            if (bitmapDecodeFile != null) {
                roundImageView.setImageBitmap(bitmapDecodeFile);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                        try {
                            byteArrayOutputStream.flush();
                            byteArrayOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        str2 = strEncodeToString;
                    } catch (IOException e4) {
                        e = e4;
                        try {
                            e.printStackTrace();
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.flush();
                                    byteArrayOutputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            str2 = null;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream2 = byteArrayOutputStream;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.flush();
                                    byteArrayOutputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.flush();
                            byteArrayOutputStream.close();
                        }
                        throw th;
                    }
                } catch (IOException e7) {
                    e = e7;
                    byteArrayOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            b bVar = new b();
            if (TextUtils.isEmpty(str) || str.lastIndexOf("/") == -1 || getFilesDir() == null) {
                u();
            } else {
                String strSubstring = str.substring(str.lastIndexOf("/"));
                File file = new File(hk7.b(this).getAbsolutePath() + "/OriPicture/avatar");
                if (!file.exists()) {
                    file.mkdirs();
                }
                new Thread(new OppO0Op(bitmapDecodeFile, str, file.getPath() + "/" + strSubstring, bVar)).start();
            }
        }
        AccountRes accountRes = this.f.c;
        if (accountRes != null) {
            accountRes.base64Avatar = str2;
            ao7.a.a.c(this, accountRes);
        }
        am7.a(this, wk7.a(), null);
    }

    @Override
    public void H() {
        com.transsion.xuanniao.account.center.view.a aVar = this.g;
        com.transsion.widgetslib.dialog.d dVar = aVar.a;
        if (dVar != null && dVar.isShowing()) {
            aVar.a.dismiss();
        }
        am7.a(this, wk7.a(), null);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void S(ArrayList arrayList) {
        AddressesListRes.Address address;
        if (arrayList == null || arrayList.size() <= 0) {
            this.i.setText(getString(R.string.xn_not_filled_in));
            return;
        }
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                address = null;
                break;
            } else {
                if (((AddressesListRes.Address) arrayList.get(i)).defaultFlag) {
                    address = (AddressesListRes.Address) arrayList.get(i);
                    break;
                }
                i++;
            }
        }
        TextView textView = (TextView) findViewById(R.id.address);
        if (address == null) {
            textView.setText(r0(R.string.xn_address_num, Integer.valueOf(arrayList.size())));
            return;
        }
        if (TextUtils.isEmpty(address.label)) {
            textView.setText(getString(R.string.xn_address_default_set));
            return;
        }
        textView.setText(getString(R.string.xn_address_default) + StringUtils.PROCESS_POSTFIX_DELIMITER + address.label);
    }

    @Override
    public void a0() {
        com.transsion.xuanniao.account.center.view.a aVar = this.g;
        AccountRes accountRes = this.f.c;
        aVar.a(this, accountRes != null ? accountRes.username : "");
        com.transsion.xuanniao.account.center.view.a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.e.setError(0);
            aVar2.d.setEnabled(false);
            aVar2.f = aVar2.b.getText();
        }
    }

    @Override
    public void f0(AccountRes accountRes) {
        this.j = true;
        ao7.a.a.c(this, accountRes);
        this.f.i = accountRes.countryCode;
        RoundImageView roundImageView = (RoundImageView) findViewById(R.id.portrait);
        if (getFilesDir() != null) {
            hk7 hk7Var = hk7.a.a;
            Bitmap bitmapA = hk7Var.a(this, accountRes.avatarUrl);
            if (bitmapA == null) {
                hk7Var.d(this, accountRes.avatarUrl, new a(accountRes, roundImageView));
            } else {
                roundImageView.setImageBitmap(bitmapA);
            }
        } else {
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(getApplicationContext()).load(accountRes.avatarUrl);
            RequestOptions requestOptions = new RequestOptions();
            int i = R.drawable.xn_portrait_default;
            requestBuilderLoad.apply((BaseRequestOptions<?>) requestOptions.fallback(i).error(i)).into(roundImageView);
        }
        ((TextView) findViewById(R.id.nickName)).setText(TextUtils.isEmpty(accountRes.nickname) ? accountRes.username : accountRes.nickname);
        ((TextView) findViewById(R.id.username)).setText(B0(accountRes.username));
        ((TextView) findViewById(R.id.fullName)).setText(B0(accountRes.fullName));
        TextView textView = (TextView) findViewById(R.id.gender);
        if (this.f.h() == 1) {
            textView.setText(getString(R.string.xn_man));
        } else if (this.f.h() == 2) {
            textView.setText(getString(R.string.xn_female));
        } else {
            textView.setText(getString(R.string.xn_secrecy));
        }
        TextView textView2 = (TextView) findViewById(R.id.birthday);
        if (TextUtils.isEmpty(accountRes.birthday)) {
            textView2.setText(R.string.xn_not_filled_in);
        } else {
            try {
                textView2.setText(DateFormat.getLongDateFormat(this).format(Long.valueOf(new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D, Locale.getDefault()).parse(accountRes.birthday).getTime())));
            } catch (Exception unused) {
                textView2.setText(accountRes.birthday);
            }
        }
        ((TextView) findViewById(R.id.region)).setText(B0(accountRes.state));
        ((TextView) findViewById(R.id.signature)).setText(B0(accountRes.signature));
        AccountRes accountRes2 = this.f.c;
        if (accountRes2 == null || accountRes2.usernameModifyRemainTimes > 0) {
            return;
        }
        findViewById(R.id.usernameArrow).setAlpha(0.4f);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.d("com.palm.id.log", "requestCode:" + i + "  resultCode:" + i2);
        if (i == this.e) {
            if (i2 == -1) {
                C0();
            } else {
                finish();
            }
        } else if (i == 1007) {
            if (i2 == -1 && intent != null) {
                String stringExtra = intent.getStringExtra("key_name");
                String stringExtra2 = intent.getStringExtra("key_cc");
                String stringExtra3 = intent.getStringExtra("key_name_en");
                HashMap map = new HashMap();
                map.put(ICode.CALL.CALL_KEY_STATE, stringExtra);
                map.put("countryCode", stringExtra2);
                map.put("countryName", stringExtra3);
                this.f.e(map, ICode.CALL.CALL_KEY_STATE, true);
                xj.U(getApplicationContext()).z1(stringExtra2);
            }
        } else if (i == 1008 && intent != null) {
            try {
                OppOOp0 oppOOp0 = this.f;
                if (oppOOp0 != null) {
                    oppOOp0.j = (ArrayList) intent.getSerializableExtra("addresses");
                    S(this.f.j);
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
        }
        o oVar = this.h;
        if (oVar != null) {
            oVar.a(i, i2, intent);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            if (bundle != null) {
                this.j = bundle.getBoolean("isDataReady", false);
            }
            C0();
        } else {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("source", getIntent().getStringExtra("source"));
            intent.putExtra("isFinish", true);
            startActivityForResult(intent, this.e);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.f != null) {
            xj.U(getApplication()).N(sm7.e(this.f.c));
            this.f.a = null;
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
    public void onPause() {
        super.onPause();
        if (this.i != null) {
            fkb.b().c(this.i.getText().toString());
        }
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.h.b(i, iArr);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.j = bundle.getBoolean("isDataReady");
        if (this.h != null) {
            if (bundle.containsKey("currentPhotoPath")) {
                this.h.a = bundle.getString("currentPhotoPath");
            }
            if (bundle.containsKey("imageUri") && !TextUtils.isEmpty(bundle.getString("imageUri"))) {
                this.h.b = Uri.parse(bundle.getString("imageUri"));
            }
            if (bundle.containsKey("outFile")) {
                this.h.c = new File(bundle.getString("outFile"));
            }
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isDataReady", this.j);
        o oVar = this.h;
        if (oVar != null) {
            bundle.putString("currentPhotoPath", oVar.a);
            bundle.putString("imageUri", String.valueOf(this.h.b));
            File file = this.h.c;
            if (file != null) {
                bundle.putString("outFile", file.getAbsolutePath());
            }
        }
    }

    @Override
    public void p0() {
        xj xjVarU = xj.U(getApplicationContext());
        OppOOp0 oppOOp0 = this.f;
        String str = oppOOp0.g;
        CountryData countryData = oppOOp0.k;
        xjVarU.z1(CountryData.getCode(this, str, countryData != null ? countryData.countries : null));
    }

    @Override
    public void u() {
        o oVar = this.h;
        if (oVar != null) {
            try {
                File file = oVar.c;
                if (file == null || !file.isFile()) {
                    return;
                }
                oVar.c.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public File v() {
        return this.h.c;
    }
}
