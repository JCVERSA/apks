package com.transsion.xuanniao.account.center.view;

import OppOOO0.OppOp0;
import android.app.ActionBar;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.RoundImageView;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import com.transsion.xuanniao.account.model.data.OptionItem;
import defpackage.am7;
import defpackage.ao7;
import defpackage.bs7;
import defpackage.c39;
import defpackage.ck7;
import defpackage.cm7;
import defpackage.er7;
import defpackage.go7;
import defpackage.hk7;
import defpackage.ho7;
import defpackage.ir7;
import defpackage.jr7;
import defpackage.mm7;
import defpackage.olb;
import defpackage.qn7;
import defpackage.qq7;
import defpackage.rm7;
import defpackage.tl7;
import defpackage.um7;
import defpackage.vm7;
import defpackage.vo7;
import defpackage.wk7;
import defpackage.xj;
import defpackage.xq7;
import defpackage.zk7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Objects;

public class UserCenterActivity extends BaseActivity implements qq7 {
    public static final int r = 0;
    public int e = 1001;
    public int f = 1002;
    public int g = 1003;
    public int h = 1004;
    public int i = 1005;
    public int j = 1007;
    public OppOp0 k;
    public mm7 l;
    public o m;
    public boolean n;
    public PopupWindow o;
    public ho7 p;
    public boolean q;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            UserCenterActivity userCenterActivity = UserCenterActivity.this;
            userCenterActivity.p.a(userCenterActivity);
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            UserCenterActivity userCenterActivity = UserCenterActivity.this;
            userCenterActivity.p.a(userCenterActivity);
            UserCenterActivity userCenterActivity2 = UserCenterActivity.this;
            userCenterActivity2.getClass();
            go7.a.a.getClass();
            userCenterActivity2.k.d(userCenterActivity2.getResources().getBoolean(R.bool.sdk_logout_is_force));
        }
    }

    public class c implements mm7.d {
        public c() {
        }
    }

    public class d implements OppOp00.a.InterfaceC0003a {
        public final AccountRes a;
        public final RoundImageView b;

        public d(AccountRes accountRes, RoundImageView roundImageView) {
            this.a = accountRes;
            this.b = roundImageView;
        }

        @Override
        public void F(String str) {
            if (str == null) {
                str = this.a.avatarUrl;
            }
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(UserCenterActivity.this.getApplicationContext()).load(str);
            UserCenterActivity userCenterActivity = UserCenterActivity.this;
            int i = UserCenterActivity.r;
            requestBuilderLoad.apply((BaseRequestOptions<?>) userCenterActivity.I0()).into(this.b);
            Log.d("com.palm.id.log", "saveAvatar success 1");
        }
    }

    public class e implements OppOp00.a.InterfaceC0003a {
        public e(UserCenterActivity userCenterActivity) {
        }

        @Override
        public void F(String str) {
            Log.d("com.palm.id.log", "saveAvatar success 2");
        }
    }

    public class f extends rm7 {
        public f() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.infoL) {
                UserCenterActivity userCenterActivity = UserCenterActivity.this;
                userCenterActivity.getClass();
                xj.U(userCenterActivity).J1();
                UserCenterActivity userCenterActivity2 = UserCenterActivity.this;
                OppOp0 oppOp0 = userCenterActivity2.k;
                if (oppOp0.e == null) {
                    oppOp0.b("goPersonInfo");
                } else {
                    userCenterActivity2.F0();
                }
            } else if (view.getId() == R.id.safeCenterL) {
                UserCenterActivity userCenterActivity3 = UserCenterActivity.this;
                userCenterActivity3.getClass();
                xj.U(userCenterActivity3).H1();
                Intent intent = new Intent(UserCenterActivity.this, (Class<?>) SafeCenterActivity.class);
                UserCenterActivity userCenterActivity4 = UserCenterActivity.this;
                userCenterActivity4.startActivityForResult(intent, userCenterActivity4.i);
            } else if (view.getId() == R.id.privacyCenterL) {
                UserCenterActivity userCenterActivity5 = UserCenterActivity.this;
                userCenterActivity5.getClass();
                xj.U(userCenterActivity5).L1();
                UserCenterActivity.this.startActivity(new Intent(UserCenterActivity.this, (Class<?>) PrivacyCenterActivity.class));
            }
            if (view.getId() == R.id.portrait) {
                AccountRes accountRes = UserCenterActivity.this.k.e;
                if (TextUtils.isEmpty(accountRes != null ? accountRes.avatarUrl : "")) {
                    UserCenterActivity userCenterActivity6 = UserCenterActivity.this;
                    userCenterActivity6.getClass();
                    xj.U(userCenterActivity6).I1();
                    if (UserCenterActivity.this.m.d()) {
                        UserCenterActivity.this.m.h();
                        return;
                    }
                    return;
                }
                UserCenterActivity userCenterActivity7 = UserCenterActivity.this;
                userCenterActivity7.getClass();
                Intent intent2 = new Intent(userCenterActivity7, (Class<?>) PortraitPreviewActivity.class);
                AccountRes accountRes2 = userCenterActivity7.k.e;
                intent2.putExtra("url", accountRes2 != null ? accountRes2.avatarUrl : "");
                userCenterActivity7.startActivity(intent2);
            }
        }
    }

    @Override
    public void B() {
        this.n = false;
        vo7.a(this);
        am7.a(this, wk7.a(), null);
        SharedPreferences.Editor editorEdit = getApplicationContext().getSharedPreferences("AccountPrefs", 0).edit();
        editorEdit.putBoolean("user_log_out", true);
        editorEdit.apply();
        go7.a.a.getClass();
        finish();
    }

    public final void D0(View view) {
        K0();
    }

    public final void E0(AdapterView adapterView, View view, int i, long j) {
        OptionItem optionItem = (OptionItem) this.k.f().get(i);
        if (optionItem == null) {
            this.o.dismiss();
            return;
        }
        if (optionItem.optionType == 1) {
            xj.U(this).o0();
            go7.a.a.getClass();
            this.k.d(getResources().getBoolean(R.bool.sdk_logout_is_force));
        }
        this.o.dismiss();
    }

    public final void F0() {
        boolean z;
        OppOp0 oppOp0 = this.k;
        AccountRes accountRes = oppOp0.e;
        if (accountRes != null) {
            z = TextUtils.isEmpty(accountRes.xuanniaoId) ? true : oppOp0.e.existPassword;
        } else {
            z = false;
        }
        if (z) {
            startActivityForResult(new Intent(this, (Class<?>) PersonInfoActivity.class), this.j);
        } else {
            ck7.a(this, getString(R.string.xn_set_pwd_note_msg), MediaFormat.KEY_PROFILE);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00f5  */
    @Override
    public void G(AccountRes accountRes, String str) {
        byte b2;
        if (accountRes == null) {
            return;
        }
        RoundImageView roundImageView = (RoundImageView) findViewById(R.id.portrait);
        if (getFilesDir() != null) {
            hk7 hk7Var = hk7.a.a;
            Bitmap bitmapA = hk7Var.a(this, accountRes.avatarUrl);
            if (bitmapA != null) {
                roundImageView.setImageBitmap(bitmapA);
            } else if (TextUtils.isEmpty(accountRes.base64Avatar)) {
                hk7Var.d(this, accountRes.avatarUrl, new d(accountRes, roundImageView));
            } else {
                Bitmap bitmapA2 = OppOp00.a.a(accountRes.base64Avatar);
                roundImageView.setImageBitmap(bitmapA2);
                hk7Var.c(this, bitmapA2, accountRes.avatarUrl, new e(this));
            }
        } else {
            Glide.with(getApplicationContext()).load(accountRes.avatarUrl).apply((BaseRequestOptions<?>) I0()).into(roundImageView);
        }
        TextView textView = (TextView) findViewById(R.id.nickName);
        if (TextUtils.isEmpty(accountRes.nickname)) {
            textView.setText(accountRes.username);
        } else {
            textView.setText(accountRes.nickname);
        }
        ((TextView) findViewById(R.id.accountId)).setText(accountRes.username);
        if ("goPersonInfo".equals(str)) {
            F0();
        }
        TextView textView2 = (TextView) findViewById(R.id.infoLabel);
        AccountRes accountRes2 = this.k.e;
        if (accountRes2 != null ? TextUtils.isEmpty(accountRes2.avatarUrl) : false) {
            textView2.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.xn_red_point, 0);
            findViewById(R.id.perfectInfo).setVisibility(0);
        } else {
            textView2.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            findViewById(R.id.perfectInfo).setVisibility(8);
        }
        OppOp0 oppOp0 = this.k;
        AccountRes accountRes3 = oppOp0.e;
        if (accountRes3 == null || TextUtils.isEmpty(accountRes3.xuanniaoId)) {
            b2 = -1;
        } else {
            AccountRes accountRes4 = oppOp0.e;
            if (!accountRes4.existPassword) {
                b2 = 1;
            } else if (TextUtils.isEmpty(accountRes4.phone) && TextUtils.isEmpty(oppOp0.e.email)) {
                b2 = 2;
            } else {
                b2 = -1;
            }
        }
        TextView textView3 = (TextView) findViewById(R.id.safeCenter);
        TextView textView4 = (TextView) findViewById(R.id.perfectSafe);
        Objects.requireNonNull(this.k);
        if (b2 == 1) {
            textView3.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.xn_red_point, 0);
            textView4.setText(getString(R.string.xn_set_pwd));
            textView4.setVisibility(0);
            return;
        }
        Objects.requireNonNull(this.k);
        if (b2 != 2) {
            textView3.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            textView4.setVisibility(8);
        } else {
            textView3.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.xn_red_point, 0);
            textView4.setText(getString(R.string.xn_set_safe));
            textView4.setVisibility(0);
        }
    }

    public final void G0() {
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayOptions(16, 26);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setCustomView(R.layout.xn_user_center_action_bar);
        try {
            ((TextView) actionBar.getCustomView().findViewById(R.id.title)).setText(jr7.d(getString(R.string.xn_app_name)));
            View viewFindViewById = actionBar.getCustomView().findViewById(R.id.menu_action);
            if (getResources().getBoolean(R.bool.sdk_logout_is_show)) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.D0(view);
                    }
                });
            } else {
                viewFindViewById.setVisibility(8);
            }
        } catch (Exception unused) {
        }
    }

    public final void H0() {
        setContentView(R.layout.xn_activity_user_center);
        OppOp0 oppOp0 = new OppOp0();
        this.k = oppOp0;
        oppOp0.a = this;
        G0();
        f fVar = new f();
        findViewById(R.id.infoL).setOnClickListener(fVar);
        findViewById(R.id.safeCenterL).setOnClickListener(fVar);
        findViewById(R.id.privacyCenterL).setOnClickListener(fVar);
        if (jr7.g(this)) {
            ((TextView) findViewById(R.id.privacyCenter)).setText(R.string.xn_privacy_center);
        }
        findViewById(R.id.accountId).setOnClickListener(fVar);
        findViewById(R.id.portrait).setOnClickListener(fVar);
        this.m = new o(this, new q(this));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        this.k.e = ao7.a.a.j(this);
        G(this.k.e, null);
        this.k.b("update");
        this.n = true;
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
        try {
            if (ho7.c(this)) {
                J0();
            }
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    public final RequestOptions I0() {
        RequestOptions requestOptions = new RequestOptions();
        int i = R.drawable.xn_portrait_default;
        return requestOptions.placeholder(i).fallback(i).error(i);
    }

    @Override
    public Context J() {
        return this;
    }

    public final void J0() {
        if (this.p == null) {
            this.p = new ho7(this, new a(), new b());
        }
        ho7 ho7Var = this.p;
        com.transsion.widgetslib.dialog.d dVar = ho7Var.a;
        if (dVar != null) {
            if (dVar.isShowing()) {
                return;
            }
            ho7Var.a.show();
            return;
        }
        com.transsion.widgetslib.dialog.d.a aVarT = new com.transsion.widgetslib.dialog.d.a(ho7Var.b, R.style.dialog_soft_input).D(R.layout.xn_brand_upgrade_note).B(ho7Var.b.getString(R.string.xn_u_update)).f(false).t(new zk7(ho7Var));
        if (ho7Var.d != null) {
            aVarT.w(ho7Var.b.getString(R.string.xn_confirm), ho7Var.d);
        }
        if (ho7Var.e != null) {
            aVarT.n(ho7Var.b.getString(R.string.xn_logout), ho7Var.e);
        }
        com.transsion.widgetslib.dialog.d dVarF = aVarT.F();
        ho7Var.a = dVarF;
        ho7Var.c = dVarF.e(-1);
        ((TextView) ho7Var.a.findViewById(R.id.note)).setText(jr7.d(ho7Var.b.getString(R.string.xn_account_update_tips, "TECNO ID")));
        if (!tl7.c(ho7Var.b).h()) {
            ho7Var.a.findViewById(R.id.privacyL).setVisibility(8);
            return;
        }
        ho7Var.c.setEnabled(false);
        ((CheckBox) ho7Var.a.findViewById(R.id.agreementCheck)).setOnCheckedChangeListener(new cm7(ho7Var));
        ho7Var.f = (TextView) ho7Var.a.findViewById(R.id.agreement);
        String string = ho7Var.b.getString(R.string.xn_user_agreement);
        String string2 = ho7Var.b.getString(R.string.xn_privacy_policy);
        String strD = jr7.d(ho7Var.b.getString(R.string.xn_u_agreement, "TECNO ID", string, string2));
        SpannableString spannableString = new SpannableString(strD + " ");
        int iIndexOf = strD.toLowerCase().indexOf(string.toLowerCase());
        spannableString.setSpan(new er7(ho7Var.b, new vm7(ho7Var)), iIndexOf, string.length() + iIndexOf, 33);
        int iIndexOf2 = strD.toLowerCase().indexOf(string2.toLowerCase());
        spannableString.setSpan(new er7(ho7Var.b, new qn7(ho7Var)), iIndexOf2, string2.length() + iIndexOf2, 33);
        ho7Var.f.setText(spannableString);
        ho7Var.f.setMovementMethod(ir7.a());
    }

    public final void K0() {
        if (this.o == null) {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.xn_option_list, (ViewGroup) null);
            ListView listView = (ListView) viewInflate.findViewById(R.id.optionListView);
            listView.setAdapter((ListAdapter) new xq7(this, this.k.f()));
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.b.E0(adapterView, view, i, j);
                }
            });
            viewInflate.measure(0, 0);
            PopupWindow popupWindow = new PopupWindow(this, (AttributeSet) null, 0, R.style.OsListPopupWindowStyle);
            this.o = popupWindow;
            popupWindow.setContentView(viewInflate);
            this.o.setWidth(c39.a(36.0f) + viewInflate.getMeasuredWidth());
            this.o.setOutsideTouchable(true);
            this.o.setFocusable(true);
        }
        if (this.o.isShowing()) {
            this.o.dismiss();
        } else if (olb.l0()) {
            this.o.showAsDropDown(getActionBar().getCustomView(), c39.a(-16.0f), c39.a(-1.0f), GravityCompat.END);
        } else {
            this.o.showAsDropDown(getActionBar().getCustomView(), c39.a(16.0f), c39.a(-1.0f), GravityCompat.END);
        }
    }

    @Override
    public void e0() {
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        if (sharedPreferences.getBoolean("is_logged_in", false)) {
            if (sharedPreferences.getBoolean("key_tudc_relogin", false)) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean("key_tudc_relogin", false);
                editorEdit.apply();
                return;
            }
            try {
                if (CloudConfigRes.privacyNeedAgree(this)) {
                    if (this.l == null) {
                        this.l = new mm7(this, new c());
                    }
                    this.l.a();
                }
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
            }
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        OppOp0 oppOp0;
        OppOp0 oppOp1;
        super.onActivityResult(i, i2, intent);
        Log.d("com.palm.id.log", "onActivityResult " + i + StringUtils.COMMA + i2);
        if (i == this.e) {
            this.q = false;
            if (i2 == -1) {
                H0();
            } else {
                finish();
            }
        } else if (i == this.f) {
            if (i2 == -1) {
                this.n = true;
            } else {
                finish();
            }
        } else if (i == 9001) {
            if (i2 == -1 && (oppOp1 = this.k) != null) {
                AccountRes accountRes = oppOp1.e;
                if (accountRes != null) {
                    accountRes.existPassword = true;
                }
                ao7.a.a.c(this, accountRes);
                G(this.k.e, null);
                F0();
            }
        } else if (i == this.g) {
            H0();
        } else if (i == this.h) {
            if (i2 == -1) {
                B();
            } else {
                OppOp0 oppOp2 = this.k;
                if (oppOp2 != null) {
                    oppOp2.e = ao7.a.a.j(this);
                }
            }
        } else if (i == this.i) {
            OppOp0 oppOp3 = this.k;
            if (oppOp3 != null) {
                oppOp3.e = ao7.a.a.j(this);
                G(this.k.e, null);
            }
        } else if (i == this.j && (oppOp0 = this.k) != null) {
            oppOp0.e = ao7.a.a.j(this);
            G(this.k.e, null);
        }
        o oVar = this.m;
        if (oVar != null) {
            oVar.a(i, i2, intent);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            H0();
            return;
        }
        if (bundle == null || !bundle.getBoolean("isReqLogin")) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("source", getIntent().getStringExtra("source"));
            intent.putExtra("isFinish", true);
            startActivityForResult(intent, this.e);
        }
        this.q = true;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        OppOp0 oppOp0 = this.k;
        if (oppOp0 != null) {
            oppOp0.a = null;
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
        this.m.b(i, iArr);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.m == null || getFilesDir() == null) {
            return;
        }
        if (bundle.containsKey("currentPhotoPath")) {
            this.m.a = bundle.getString("currentPhotoPath");
        }
        if (bundle.containsKey("imageUri") && !TextUtils.isEmpty(bundle.getString("imageUri"))) {
            this.m.b = Uri.parse(bundle.getString("imageUri"));
        }
        if (bundle.containsKey("outFile")) {
            this.m.c = new File(bundle.getString("outFile"));
        }
    }

    @Override
    public void onResume() {
        OppOp0 oppOp0;
        UserCenterActivity userCenterActivityE;
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        super.onResume();
        e0();
        if (this.n) {
            View viewFindViewById = findViewById(R.id.placeholder);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            layoutParams.height = z0();
            viewFindViewById.setLayoutParams(layoutParams);
            if (CloudConfigRes.needRefresh(this) && (userCenterActivityE = (oppOp0 = this.k).e()) != null && (connectivityManager = (ConnectivityManager) userCenterActivityE.getApplicationContext().getSystemService("connectivity")) != null) {
                try {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                        if (oppOp0.g == null) {
                            oppOp0.g = new um7();
                        }
                        oppOp0.g.a(oppOp0.e(), new bs7(oppOp0, oppOp0.e(), CloudConfigRes.class));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                xj.U(this).N1();
            }
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.m != null && getFilesDir() != null) {
            bundle.putString("currentPhotoPath", this.m.a);
            bundle.putString("imageUri", String.valueOf(this.m.b));
            File file = this.m.c;
            if (file != null) {
                bundle.putString("outFile", file.getAbsolutePath());
            }
        }
        bundle.putBoolean("isReqLogin", this.q);
    }

    @Override
    public void u() {
        o oVar = this.m;
        if (oVar != null) {
            try {
                File file = oVar.c;
                if (file == null || !file.isFile()) {
                    return;
                }
                oVar.c.delete();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override
    public File v() {
        return this.m.c;
    }
}
